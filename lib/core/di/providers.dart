import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:network_info_plus/network_info_plus.dart';

import '../services/ip_info_service.dart';

part 'providers.g.dart';

class WifiInfoService {
  final _networkInfo = NetworkInfo();

  Future<String?> getSSID() async {
    try {
      return await _networkInfo.getWifiName();
    } catch (_) {
      return null;
    }
  }

  Future<String?> getBSSID() async {
    try {
      return await _networkInfo.getWifiBSSID();
    } catch (_) {
      return null;
    }
  }

  Future<String?> getLocalIP() async {
    try {
      return await _networkInfo.getWifiIP();
    } catch (_) {
      return null;
    }
  }

  Future<String?> getGateway() async {
    try {
      return await _networkInfo.getWifiGatewayIP();
    } catch (_) {
      return null;
    }
  }

  Future<String?> getSubnet() async {
    try {
      return await _networkInfo.getWifiSubmask();
    } catch (_) {
      return null;
    }
  }

  Future<int?> getFrequency() async {
    return null;
  }

  Future<int?> getLinkSpeed() async {
    return null;
  }
}

@riverpod
IpInfoService ipInfoService(IpInfoServiceRef ref) => IpInfoService();

@riverpod
Future<Map<String, dynamic>> ipInfo(IpInfoRef ref) =>
  ref.watch(ipInfoServiceProvider).fetchIpInfo();

@riverpod
WifiInfoService wifiInfoService(WifiInfoServiceRef ref) => WifiInfoService();
