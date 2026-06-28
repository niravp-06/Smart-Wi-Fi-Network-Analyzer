import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/di/providers.dart';
import '../../data/models/network_info_model.dart';

part 'dashboard_view_model.freezed.dart';
part 'dashboard_view_model.g.dart';

@freezed
class DashboardState with _$DashboardState {
  factory DashboardState({
    @Default(null) NetworkInfoModel? networkInfo,
    @Default(true) bool isLoading,
    String? error,
  }) = _DashboardState;
}

@riverpod
class DashboardViewModel extends _$DashboardViewModel {
  @override
  DashboardState build() {
    return DashboardState(isLoading: true);
  }

  Future<void> load() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final wifiService = ref.read(wifiInfoServiceProvider);
      final ipService = ref.read(ipInfoServiceProvider);

      // 1. Fetch SSID, BSSID, LocalIP, Frequency from WifiInfoService
      final ssid = await wifiService.getSSID() ?? 'Unknown';
      final bssid = await wifiService.getBSSID() ?? 'Unknown';
      final localIp = await wifiService.getLocalIP() ?? 'Unknown';
      final freqStr = await wifiService.getFrequency();
      final freq = freqStr ?? 0;
      final frequencyStr = freq > 0 ? '$freq MHz' : 'Unknown';
      final gateway = await wifiService.getGateway();

      // 2. Fetch PublicIP, ISP, IPVersion from IpInfoService
      final ipInfo = await ipService.fetchIpInfo();
      final publicIp = ipInfo['ip'] as String? ?? 'Unknown';
      final ispOrg = ipInfo['org'] as String? ?? 'Unknown';
      final ipVersion = ipInfo['version'] as String? ?? 'Unknown';
      final ispName = ipService.parseIspName(ispOrg);

      // 3. Derive band from frequency
      String band = '2.4 GHz';
      if (freq >= 5945) {
        band = '6 GHz';
      } else if (freq >= 5000) {
        band = '5 GHz';
      }

      // 4. Derive wifiVersion from frequency
      String wifiVersion = 'Wi-Fi 4 (802.11n)';
      if (freq >= 5945) {
        wifiVersion = 'Wi-Fi 6E (802.11ax)';
      } else if (freq >= 5000) {
        wifiVersion = 'Wi-Fi 5 (802.11ac)';
      }

      // 5. Derive securityType
      const securityType = 'WPA2 (estimated)';

      // 6. Set state with built NetworkInfoModel
      final networkInfo = NetworkInfoModel(
        ssid: ssid,
        bssid: bssid,
        localIp: localIp,
        publicIp: publicIp,
        frequency: frequencyStr,
        band: band,
        securityType: securityType,
        wifiVersion: wifiVersion,
        rssi: -50, // Hardcoded for now
        ispName: ispName,
        ispOrg: ispOrg,
        ipVersion: ipVersion,
        gateway: gateway,
      );

      state = state.copyWith(networkInfo: networkInfo, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }
}
