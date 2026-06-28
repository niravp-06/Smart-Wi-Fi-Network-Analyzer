import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/theme/signal_colors.dart';

part 'network_info_model.freezed.dart';

@freezed
class NetworkInfoModel with _$NetworkInfoModel {
  const NetworkInfoModel._();

  const factory NetworkInfoModel({
    required String ssid,
    required String bssid,
    required String localIp,
    required String publicIp,
    required String frequency,
    required String band,
    required String securityType,
    required String wifiVersion,
    required int rssi,
    required String ispName,
    required String ispOrg,
    String? ipVersion,
    String? subnet,
    String? gateway,
  }) = _NetworkInfoModel;

  String get signalQuality => SignalColors.qualityLabel(rssi);
}
