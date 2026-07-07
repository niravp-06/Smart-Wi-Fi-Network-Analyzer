// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speed_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SpeedResultModel _$SpeedResultModelFromJson(Map<String, dynamic> json) {
  return _SpeedResultModel.fromJson(json);
}

/// @nodoc
mixin _$SpeedResultModel {
  double get downloadMbps => throw _privateConstructorUsedError;
  double get uploadMbps => throw _privateConstructorUsedError;
  int get pingMs => throw _privateConstructorUsedError;
  int get jitterMs => throw _privateConstructorUsedError;
  double get packetLossPercent => throw _privateConstructorUsedError;
  DateTime get testedAt => throw _privateConstructorUsedError;
  String? get serverName => throw _privateConstructorUsedError;
  NetworkInfoModel? get networkInfo => throw _privateConstructorUsedError;

  /// Serializes this SpeedResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpeedResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpeedResultModelCopyWith<SpeedResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeedResultModelCopyWith<$Res> {
  factory $SpeedResultModelCopyWith(
    SpeedResultModel value,
    $Res Function(SpeedResultModel) then,
  ) = _$SpeedResultModelCopyWithImpl<$Res, SpeedResultModel>;
  @useResult
  $Res call({
    double downloadMbps,
    double uploadMbps,
    int pingMs,
    int jitterMs,
    double packetLossPercent,
    DateTime testedAt,
    String? serverName,
    NetworkInfoModel? networkInfo,
  });

  $NetworkInfoModelCopyWith<$Res>? get networkInfo;
}

/// @nodoc
class _$SpeedResultModelCopyWithImpl<$Res, $Val extends SpeedResultModel>
    implements $SpeedResultModelCopyWith<$Res> {
  _$SpeedResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpeedResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadMbps = null,
    Object? uploadMbps = null,
    Object? pingMs = null,
    Object? jitterMs = null,
    Object? packetLossPercent = null,
    Object? testedAt = null,
    Object? serverName = freezed,
    Object? networkInfo = freezed,
  }) {
    return _then(
      _value.copyWith(
            downloadMbps: null == downloadMbps
                ? _value.downloadMbps
                : downloadMbps // ignore: cast_nullable_to_non_nullable
                      as double,
            uploadMbps: null == uploadMbps
                ? _value.uploadMbps
                : uploadMbps // ignore: cast_nullable_to_non_nullable
                      as double,
            pingMs: null == pingMs
                ? _value.pingMs
                : pingMs // ignore: cast_nullable_to_non_nullable
                      as int,
            jitterMs: null == jitterMs
                ? _value.jitterMs
                : jitterMs // ignore: cast_nullable_to_non_nullable
                      as int,
            packetLossPercent: null == packetLossPercent
                ? _value.packetLossPercent
                : packetLossPercent // ignore: cast_nullable_to_non_nullable
                      as double,
            testedAt: null == testedAt
                ? _value.testedAt
                : testedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            serverName: freezed == serverName
                ? _value.serverName
                : serverName // ignore: cast_nullable_to_non_nullable
                      as String?,
            networkInfo: freezed == networkInfo
                ? _value.networkInfo
                : networkInfo // ignore: cast_nullable_to_non_nullable
                      as NetworkInfoModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of SpeedResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkInfoModelCopyWith<$Res>? get networkInfo {
    if (_value.networkInfo == null) {
      return null;
    }

    return $NetworkInfoModelCopyWith<$Res>(_value.networkInfo!, (value) {
      return _then(_value.copyWith(networkInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpeedResultModelImplCopyWith<$Res>
    implements $SpeedResultModelCopyWith<$Res> {
  factory _$$SpeedResultModelImplCopyWith(
    _$SpeedResultModelImpl value,
    $Res Function(_$SpeedResultModelImpl) then,
  ) = __$$SpeedResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double downloadMbps,
    double uploadMbps,
    int pingMs,
    int jitterMs,
    double packetLossPercent,
    DateTime testedAt,
    String? serverName,
    NetworkInfoModel? networkInfo,
  });

  @override
  $NetworkInfoModelCopyWith<$Res>? get networkInfo;
}

/// @nodoc
class __$$SpeedResultModelImplCopyWithImpl<$Res>
    extends _$SpeedResultModelCopyWithImpl<$Res, _$SpeedResultModelImpl>
    implements _$$SpeedResultModelImplCopyWith<$Res> {
  __$$SpeedResultModelImplCopyWithImpl(
    _$SpeedResultModelImpl _value,
    $Res Function(_$SpeedResultModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SpeedResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadMbps = null,
    Object? uploadMbps = null,
    Object? pingMs = null,
    Object? jitterMs = null,
    Object? packetLossPercent = null,
    Object? testedAt = null,
    Object? serverName = freezed,
    Object? networkInfo = freezed,
  }) {
    return _then(
      _$SpeedResultModelImpl(
        downloadMbps: null == downloadMbps
            ? _value.downloadMbps
            : downloadMbps // ignore: cast_nullable_to_non_nullable
                  as double,
        uploadMbps: null == uploadMbps
            ? _value.uploadMbps
            : uploadMbps // ignore: cast_nullable_to_non_nullable
                  as double,
        pingMs: null == pingMs
            ? _value.pingMs
            : pingMs // ignore: cast_nullable_to_non_nullable
                  as int,
        jitterMs: null == jitterMs
            ? _value.jitterMs
            : jitterMs // ignore: cast_nullable_to_non_nullable
                  as int,
        packetLossPercent: null == packetLossPercent
            ? _value.packetLossPercent
            : packetLossPercent // ignore: cast_nullable_to_non_nullable
                  as double,
        testedAt: null == testedAt
            ? _value.testedAt
            : testedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        serverName: freezed == serverName
            ? _value.serverName
            : serverName // ignore: cast_nullable_to_non_nullable
                  as String?,
        networkInfo: freezed == networkInfo
            ? _value.networkInfo
            : networkInfo // ignore: cast_nullable_to_non_nullable
                  as NetworkInfoModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeedResultModelImpl implements _SpeedResultModel {
  const _$SpeedResultModelImpl({
    required this.downloadMbps,
    required this.uploadMbps,
    required this.pingMs,
    required this.jitterMs,
    required this.packetLossPercent,
    required this.testedAt,
    this.serverName,
    this.networkInfo,
  });

  factory _$SpeedResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeedResultModelImplFromJson(json);

  @override
  final double downloadMbps;
  @override
  final double uploadMbps;
  @override
  final int pingMs;
  @override
  final int jitterMs;
  @override
  final double packetLossPercent;
  @override
  final DateTime testedAt;
  @override
  final String? serverName;
  @override
  final NetworkInfoModel? networkInfo;

  @override
  String toString() {
    return 'SpeedResultModel(downloadMbps: $downloadMbps, uploadMbps: $uploadMbps, pingMs: $pingMs, jitterMs: $jitterMs, packetLossPercent: $packetLossPercent, testedAt: $testedAt, serverName: $serverName, networkInfo: $networkInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeedResultModelImpl &&
            (identical(other.downloadMbps, downloadMbps) ||
                other.downloadMbps == downloadMbps) &&
            (identical(other.uploadMbps, uploadMbps) ||
                other.uploadMbps == uploadMbps) &&
            (identical(other.pingMs, pingMs) || other.pingMs == pingMs) &&
            (identical(other.jitterMs, jitterMs) ||
                other.jitterMs == jitterMs) &&
            (identical(other.packetLossPercent, packetLossPercent) ||
                other.packetLossPercent == packetLossPercent) &&
            (identical(other.testedAt, testedAt) ||
                other.testedAt == testedAt) &&
            (identical(other.serverName, serverName) ||
                other.serverName == serverName) &&
            (identical(other.networkInfo, networkInfo) ||
                other.networkInfo == networkInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    downloadMbps,
    uploadMbps,
    pingMs,
    jitterMs,
    packetLossPercent,
    testedAt,
    serverName,
    networkInfo,
  );

  /// Create a copy of SpeedResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeedResultModelImplCopyWith<_$SpeedResultModelImpl> get copyWith =>
      __$$SpeedResultModelImplCopyWithImpl<_$SpeedResultModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeedResultModelImplToJson(this);
  }
}

abstract class _SpeedResultModel implements SpeedResultModel {
  const factory _SpeedResultModel({
    required final double downloadMbps,
    required final double uploadMbps,
    required final int pingMs,
    required final int jitterMs,
    required final double packetLossPercent,
    required final DateTime testedAt,
    final String? serverName,
    final NetworkInfoModel? networkInfo,
  }) = _$SpeedResultModelImpl;

  factory _SpeedResultModel.fromJson(Map<String, dynamic> json) =
      _$SpeedResultModelImpl.fromJson;

  @override
  double get downloadMbps;
  @override
  double get uploadMbps;
  @override
  int get pingMs;
  @override
  int get jitterMs;
  @override
  double get packetLossPercent;
  @override
  DateTime get testedAt;
  @override
  String? get serverName;
  @override
  NetworkInfoModel? get networkInfo;

  /// Create a copy of SpeedResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpeedResultModelImplCopyWith<_$SpeedResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
