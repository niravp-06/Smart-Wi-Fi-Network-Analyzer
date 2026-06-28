import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wifi_scan/wifi_scan.dart';
import '../../data/models/access_point_model.dart';

part 'networks_view_model.freezed.dart';
part 'networks_view_model.g.dart';

@freezed
class NetworksState with _$NetworksState {
  factory NetworksState({
    @Default([]) List<AccessPointModel> networks,
    @Default(false) bool isScanning,
    @Default(false) bool hasPermission,
    String? error,
    DateTime? lastScan,
  }) = _NetworksState;
}

@riverpod
class NetworksViewModel extends _$NetworksViewModel {
  @override
  NetworksState build() {
    return NetworksState();
  }

  Future<void> initialize() async {
    final statuses = await [
      Permission.location,
      Permission.nearbyWifiDevices,
    ].request();

    final locationGranted = statuses[Permission.location]?.isGranted ?? false;
    final granted = locationGranted;

    state = state.copyWith(hasPermission: granted);

    if (granted) {
      await scan();
    }
  }

  Future<void> scan() async {
    state = state.copyWith(isScanning: true, error: null);

    try {
      final canStart = await WiFiScan.instance.canStartScan();
      if (canStart == CanStartScan.yes) {
        await WiFiScan.instance.startScan();
      }

      await Future.delayed(const Duration(seconds: 2));

      final canGet = await WiFiScan.instance.canGetScannedResults();
      if (canGet == CanGetScannedResults.yes) {
        final results = await WiFiScan.instance.getScannedResults();
        
        var networks = results.map((ap) {
          return AccessPointModel(
            ssid: ap.ssid,
            bssid: ap.bssid,
            rssi: ap.level,
            frequency: ap.frequency,
            capabilities: ap.capabilities,
          );
        }).toList();

        networks.sort((a, b) => b.rssi.compareTo(a.rssi));

        state = state.copyWith(
          networks: networks,
          isScanning: false,
          lastScan: DateTime.now(),
        );
      } else {
        state = state.copyWith(
          isScanning: false,
          error: 'Cannot get scan results',
        );
      }
    } catch (e) {
      state = state.copyWith(isScanning: false, error: e.toString());
    }
  }
}
