// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speedtest_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SpeedtestState {
  SpeedTestPhase get phase => throw _privateConstructorUsedError;
  double get downloadSpeed => throw _privateConstructorUsedError;
  double get uploadSpeed => throw _privateConstructorUsedError;
  int get ping => throw _privateConstructorUsedError;
  int get jitter => throw _privateConstructorUsedError;
  double get packetLoss => throw _privateConstructorUsedError;
  double get downloadProgress => throw _privateConstructorUsedError;
  double get uploadProgress => throw _privateConstructorUsedError;
  SpeedResultModel? get result => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of SpeedtestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpeedtestStateCopyWith<SpeedtestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeedtestStateCopyWith<$Res> {
  factory $SpeedtestStateCopyWith(
    SpeedtestState value,
    $Res Function(SpeedtestState) then,
  ) = _$SpeedtestStateCopyWithImpl<$Res, SpeedtestState>;
  @useResult
  $Res call({
    SpeedTestPhase phase,
    double downloadSpeed,
    double uploadSpeed,
    int ping,
    int jitter,
    double packetLoss,
    double downloadProgress,
    double uploadProgress,
    SpeedResultModel? result,
    String? error,
  });

  $SpeedResultModelCopyWith<$Res>? get result;
}

/// @nodoc
class _$SpeedtestStateCopyWithImpl<$Res, $Val extends SpeedtestState>
    implements $SpeedtestStateCopyWith<$Res> {
  _$SpeedtestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpeedtestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? downloadSpeed = null,
    Object? uploadSpeed = null,
    Object? ping = null,
    Object? jitter = null,
    Object? packetLoss = null,
    Object? downloadProgress = null,
    Object? uploadProgress = null,
    Object? result = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            phase: null == phase
                ? _value.phase
                : phase // ignore: cast_nullable_to_non_nullable
                      as SpeedTestPhase,
            downloadSpeed: null == downloadSpeed
                ? _value.downloadSpeed
                : downloadSpeed // ignore: cast_nullable_to_non_nullable
                      as double,
            uploadSpeed: null == uploadSpeed
                ? _value.uploadSpeed
                : uploadSpeed // ignore: cast_nullable_to_non_nullable
                      as double,
            ping: null == ping
                ? _value.ping
                : ping // ignore: cast_nullable_to_non_nullable
                      as int,
            jitter: null == jitter
                ? _value.jitter
                : jitter // ignore: cast_nullable_to_non_nullable
                      as int,
            packetLoss: null == packetLoss
                ? _value.packetLoss
                : packetLoss // ignore: cast_nullable_to_non_nullable
                      as double,
            downloadProgress: null == downloadProgress
                ? _value.downloadProgress
                : downloadProgress // ignore: cast_nullable_to_non_nullable
                      as double,
            uploadProgress: null == uploadProgress
                ? _value.uploadProgress
                : uploadProgress // ignore: cast_nullable_to_non_nullable
                      as double,
            result: freezed == result
                ? _value.result
                : result // ignore: cast_nullable_to_non_nullable
                      as SpeedResultModel?,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of SpeedtestState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpeedResultModelCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $SpeedResultModelCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpeedtestStateImplCopyWith<$Res>
    implements $SpeedtestStateCopyWith<$Res> {
  factory _$$SpeedtestStateImplCopyWith(
    _$SpeedtestStateImpl value,
    $Res Function(_$SpeedtestStateImpl) then,
  ) = __$$SpeedtestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SpeedTestPhase phase,
    double downloadSpeed,
    double uploadSpeed,
    int ping,
    int jitter,
    double packetLoss,
    double downloadProgress,
    double uploadProgress,
    SpeedResultModel? result,
    String? error,
  });

  @override
  $SpeedResultModelCopyWith<$Res>? get result;
}

/// @nodoc
class __$$SpeedtestStateImplCopyWithImpl<$Res>
    extends _$SpeedtestStateCopyWithImpl<$Res, _$SpeedtestStateImpl>
    implements _$$SpeedtestStateImplCopyWith<$Res> {
  __$$SpeedtestStateImplCopyWithImpl(
    _$SpeedtestStateImpl _value,
    $Res Function(_$SpeedtestStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SpeedtestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phase = null,
    Object? downloadSpeed = null,
    Object? uploadSpeed = null,
    Object? ping = null,
    Object? jitter = null,
    Object? packetLoss = null,
    Object? downloadProgress = null,
    Object? uploadProgress = null,
    Object? result = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _$SpeedtestStateImpl(
        phase: null == phase
            ? _value.phase
            : phase // ignore: cast_nullable_to_non_nullable
                  as SpeedTestPhase,
        downloadSpeed: null == downloadSpeed
            ? _value.downloadSpeed
            : downloadSpeed // ignore: cast_nullable_to_non_nullable
                  as double,
        uploadSpeed: null == uploadSpeed
            ? _value.uploadSpeed
            : uploadSpeed // ignore: cast_nullable_to_non_nullable
                  as double,
        ping: null == ping
            ? _value.ping
            : ping // ignore: cast_nullable_to_non_nullable
                  as int,
        jitter: null == jitter
            ? _value.jitter
            : jitter // ignore: cast_nullable_to_non_nullable
                  as int,
        packetLoss: null == packetLoss
            ? _value.packetLoss
            : packetLoss // ignore: cast_nullable_to_non_nullable
                  as double,
        downloadProgress: null == downloadProgress
            ? _value.downloadProgress
            : downloadProgress // ignore: cast_nullable_to_non_nullable
                  as double,
        uploadProgress: null == uploadProgress
            ? _value.uploadProgress
            : uploadProgress // ignore: cast_nullable_to_non_nullable
                  as double,
        result: freezed == result
            ? _value.result
            : result // ignore: cast_nullable_to_non_nullable
                  as SpeedResultModel?,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$SpeedtestStateImpl implements _SpeedtestState {
  _$SpeedtestStateImpl({
    this.phase = SpeedTestPhase.idle,
    this.downloadSpeed = 0.0,
    this.uploadSpeed = 0.0,
    this.ping = 0,
    this.jitter = 0,
    this.packetLoss = 0.0,
    this.downloadProgress = 0.0,
    this.uploadProgress = 0.0,
    this.result,
    this.error,
  });

  @override
  @JsonKey()
  final SpeedTestPhase phase;
  @override
  @JsonKey()
  final double downloadSpeed;
  @override
  @JsonKey()
  final double uploadSpeed;
  @override
  @JsonKey()
  final int ping;
  @override
  @JsonKey()
  final int jitter;
  @override
  @JsonKey()
  final double packetLoss;
  @override
  @JsonKey()
  final double downloadProgress;
  @override
  @JsonKey()
  final double uploadProgress;
  @override
  final SpeedResultModel? result;
  @override
  final String? error;

  @override
  String toString() {
    return 'SpeedtestState(phase: $phase, downloadSpeed: $downloadSpeed, uploadSpeed: $uploadSpeed, ping: $ping, jitter: $jitter, packetLoss: $packetLoss, downloadProgress: $downloadProgress, uploadProgress: $uploadProgress, result: $result, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeedtestStateImpl &&
            (identical(other.phase, phase) || other.phase == phase) &&
            (identical(other.downloadSpeed, downloadSpeed) ||
                other.downloadSpeed == downloadSpeed) &&
            (identical(other.uploadSpeed, uploadSpeed) ||
                other.uploadSpeed == uploadSpeed) &&
            (identical(other.ping, ping) || other.ping == ping) &&
            (identical(other.jitter, jitter) || other.jitter == jitter) &&
            (identical(other.packetLoss, packetLoss) ||
                other.packetLoss == packetLoss) &&
            (identical(other.downloadProgress, downloadProgress) ||
                other.downloadProgress == downloadProgress) &&
            (identical(other.uploadProgress, uploadProgress) ||
                other.uploadProgress == uploadProgress) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    phase,
    downloadSpeed,
    uploadSpeed,
    ping,
    jitter,
    packetLoss,
    downloadProgress,
    uploadProgress,
    result,
    error,
  );

  /// Create a copy of SpeedtestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeedtestStateImplCopyWith<_$SpeedtestStateImpl> get copyWith =>
      __$$SpeedtestStateImplCopyWithImpl<_$SpeedtestStateImpl>(
        this,
        _$identity,
      );
}

abstract class _SpeedtestState implements SpeedtestState {
  factory _SpeedtestState({
    final SpeedTestPhase phase,
    final double downloadSpeed,
    final double uploadSpeed,
    final int ping,
    final int jitter,
    final double packetLoss,
    final double downloadProgress,
    final double uploadProgress,
    final SpeedResultModel? result,
    final String? error,
  }) = _$SpeedtestStateImpl;

  @override
  SpeedTestPhase get phase;
  @override
  double get downloadSpeed;
  @override
  double get uploadSpeed;
  @override
  int get ping;
  @override
  int get jitter;
  @override
  double get packetLoss;
  @override
  double get downloadProgress;
  @override
  double get uploadProgress;
  @override
  SpeedResultModel? get result;
  @override
  String? get error;

  /// Create a copy of SpeedtestState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpeedtestStateImplCopyWith<_$SpeedtestStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
