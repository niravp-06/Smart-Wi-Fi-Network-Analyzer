import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/theme/signal_colors.dart';

part 'network_info_model.freezed.dart';
part 'network_info_model.g.dart';

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
    String? ispDomain,
    String? ipVersion,
    String? subnet,
    String? gateway,
  }) = _NetworkInfoModel;

  factory NetworkInfoModel.fromJson(Map<String, dynamic> json) => _$NetworkInfoModelFromJson(json);

  String get signalQuality => SignalColors.qualityLabel(rssi);
}
