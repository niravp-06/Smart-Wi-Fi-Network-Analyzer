import 'dart:convert';
import 'dart:math' as math;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_internet_speed_test_pro/flutter_internet_speed_test_pro.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/models/speed_result_model.dart';

part 'speedtest_view_model.freezed.dart';
part 'speedtest_view_model.g.dart';

enum SpeedTestPhase { idle, testingPing, testingDownload, testingUpload, complete, error }

@freezed
class SpeedtestState with _$SpeedtestState {
  factory SpeedtestState({
    @Default(SpeedTestPhase.idle) SpeedTestPhase phase,
    @Default(0.0) double downloadSpeed,
    @Default(0.0) double uploadSpeed,
    @Default(0) int ping,
    @Default(0) int jitter,
    @Default(0.0) double packetLoss,
    @Default(0.0) double downloadProgress,
    @Default(0.0) double uploadProgress,
    SpeedResultModel? result,
    String? error,
  }) = _SpeedtestState;
}

@riverpod
class SpeedtestViewModel extends _$SpeedtestViewModel {
  final _speedTest = FlutterInternetSpeedTest();

  @override
  SpeedtestState build() {
    return SpeedtestState();
  }

  Future<void> startTest() async {
    state = SpeedtestState(phase: SpeedTestPhase.testingPing);

    try {
      // Phase 1 - testingPing
      final pingData = await _testPingAndJitter();
      state = state.copyWith(
        ping: pingData['ping'] ?? 0,
        jitter: pingData['jitter'] ?? 0,
        phase: SpeedTestPhase.testingDownload,
      );

      // Phase 2 & 3 - testingDownload and testingUpload
      await _startSpeedTestPro();
    } catch (e) {
      state = state.copyWith(
        phase: SpeedTestPhase.error,
        error: 'Failed to complete speed test: $e',
      );
    }
  }

  Future<Map<String, int>> _testPingAndJitter() async {
    List<int> pingTimes = [];
    final url = Uri.parse('https://www.google.com');

    for (int i = 0; i < 5; i++) {
      final stopwatch = Stopwatch()..start();
      try {
        await http.get(url).timeout(const Duration(seconds: 2));
      } catch (_) {
        // ignore errors for individual pings
      }
      stopwatch.stop();
      pingTimes.add(stopwatch.elapsedMilliseconds);
      await Future.delayed(const Duration(milliseconds: 100));
    }

    if (pingTimes.isEmpty) {
      return {'ping': 0, 'jitter': 0};
    }

    final averagePing = pingTimes.reduce((a, b) => a + b) / pingTimes.length;
    
    // Calculate jitter (standard deviation)
    double variance = 0;
    for (int time in pingTimes) {
      variance += math.pow(time - averagePing, 2);
    }
    final jitter = math.sqrt(variance / pingTimes.length);

    return {
      'ping': averagePing.round(),
      'jitter': jitter.round(),
    };
  }

  Future<void> _startSpeedTestPro() async {
    _speedTest.startTesting(
      onStarted: () {
        state = state.copyWith(phase: SpeedTestPhase.testingDownload);
      },
      onCompleted: (TestResult download, TestResult upload) async {
        final resultModel = SpeedResultModel(
          downloadMbps: download.transferRate,
          uploadMbps: upload.transferRate,
          pingMs: state.ping,
          jitterMs: state.jitter,
          packetLossPercent: 0.0,
          testedAt: DateTime.now(),
          serverName: 'Default Server',
        );
        
        state = state.copyWith(
          phase: SpeedTestPhase.complete,
          downloadSpeed: download.transferRate,
          uploadSpeed: upload.transferRate,
          downloadProgress: 1.0,
          uploadProgress: 1.0,
          result: resultModel,
        );
        
        await _saveResult(resultModel);
      },
      onProgress: (double percent, TestResult data) {
        if (data.type == TestType.download) {
          state = state.copyWith(
            phase: SpeedTestPhase.testingDownload,
            downloadProgress: percent / 100.0,
            downloadSpeed: data.transferRate,
          );
        } else {
          state = state.copyWith(
            phase: SpeedTestPhase.testingUpload,
            uploadProgress: percent / 100.0,
            uploadSpeed: data.transferRate,
          );
        }
      },
      onError: (String errorMessage, String speedTestError) {
        state = state.copyWith(
          phase: SpeedTestPhase.error,
          error: errorMessage,
        );
      },
    );
  }

  Future<void> _saveResult(SpeedResultModel result) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final historyList = prefs.getStringList('speed_test_history') ?? [];
      historyList.insert(0, jsonEncode(result.toJson()));
      // Keep only last 20 results
      if (historyList.length > 20) {
        historyList.removeLast();
      }
      await prefs.setStringList('speed_test_history', historyList);
    } catch (_) {
      // Ignore save errors
    }
  }

  void reset() {
    state = SpeedtestState();
  }
}
