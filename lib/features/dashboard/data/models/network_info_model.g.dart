// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NetworkInfoModelImpl _$$NetworkInfoModelImplFromJson(
  Map<String, dynamic> json,
) => _$NetworkInfoModelImpl(
  ssid: json['ssid'] as String,
  bssid: json['bssid'] as String,
  localIp: json['localIp'] as String,
  publicIp: json['publicIp'] as String,
  frequency: json['frequency'] as String,
  band: json['band'] as String,
  securityType: json['securityType'] as String,
  wifiVersion: json['wifiVersion'] as String,
  rssi: (json['rssi'] as num).toInt(),
  ispName: json['ispName'] as String,
  ispOrg: json['ispOrg'] as String,
  ispDomain: json['ispDomain'] as String?,
  ipVersion: json['ipVersion'] as String?,
  subnet: json['subnet'] as String?,
  gateway: json['gateway'] as String?,
);

Map<String, dynamic> _$$NetworkInfoModelImplToJson(
  _$NetworkInfoModelImpl instance,
) => <String, dynamic>{
  'ssid': instance.ssid,
  'bssid': instance.bssid,
  'localIp': instance.localIp,
  'publicIp': instance.publicIp,
  'frequency': instance.frequency,
  'band': instance.band,
  'securityType': instance.securityType,
  'wifiVersion': instance.wifiVersion,
  'rssi': instance.rssi,
  'ispName': instance.ispName,
  'ispOrg': instance.ispOrg,
  'ispDomain': instance.ispDomain,
  'ipVersion': instance.ipVersion,
  'subnet': instance.subnet,
  'gateway': instance.gateway,
};
