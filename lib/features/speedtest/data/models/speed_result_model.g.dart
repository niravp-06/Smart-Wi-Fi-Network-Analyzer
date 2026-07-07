// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speed_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpeedResultModelImpl _$$SpeedResultModelImplFromJson(
  Map<String, dynamic> json,
) => _$SpeedResultModelImpl(
  downloadMbps: (json['downloadMbps'] as num).toDouble(),
  uploadMbps: (json['uploadMbps'] as num).toDouble(),
  pingMs: (json['pingMs'] as num).toInt(),
  jitterMs: (json['jitterMs'] as num).toInt(),
  packetLossPercent: (json['packetLossPercent'] as num).toDouble(),
  testedAt: DateTime.parse(json['testedAt'] as String),
  serverName: json['serverName'] as String?,
  networkInfo: json['networkInfo'] == null
      ? null
      : NetworkInfoModel.fromJson(json['networkInfo'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$SpeedResultModelImplToJson(
  _$SpeedResultModelImpl instance,
) => <String, dynamic>{
  'downloadMbps': instance.downloadMbps,
  'uploadMbps': instance.uploadMbps,
  'pingMs': instance.pingMs,
  'jitterMs': instance.jitterMs,
  'packetLossPercent': instance.packetLossPercent,
  'testedAt': instance.testedAt.toIso8601String(),
  'serverName': instance.serverName,
  'networkInfo': instance.networkInfo,
};
