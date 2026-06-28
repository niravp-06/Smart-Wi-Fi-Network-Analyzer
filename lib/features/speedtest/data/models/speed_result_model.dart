import 'package:freezed_annotation/freezed_annotation.dart';

part 'speed_result_model.freezed.dart';
part 'speed_result_model.g.dart';

@freezed
class SpeedResultModel with _$SpeedResultModel {
  const factory SpeedResultModel({
    required double downloadMbps,
    required double uploadMbps,
    required int pingMs,
    required int jitterMs,
    required double packetLossPercent,
    required DateTime testedAt,
    String? serverName,
  }) = _SpeedResultModel;

  factory SpeedResultModel.fromJson(Map<String, dynamic> json) =>
      _$SpeedResultModelFromJson(json);
}
