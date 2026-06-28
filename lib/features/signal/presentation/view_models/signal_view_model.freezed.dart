// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signal_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SignalState {
  int get currentRssi => throw _privateConstructorUsedError;
  List<FlSpot> get graphData => throw _privateConstructorUsedError;
  int get dataPointIndex => throw _privateConstructorUsedError;
  String get ssid => throw _privateConstructorUsedError;
  bool get isMonitoring => throw _privateConstructorUsedError;

  /// Create a copy of SignalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignalStateCopyWith<SignalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignalStateCopyWith<$Res> {
  factory $SignalStateCopyWith(
    SignalState value,
    $Res Function(SignalState) then,
  ) = _$SignalStateCopyWithImpl<$Res, SignalState>;
  @useResult
  $Res call({
    int currentRssi,
    List<FlSpot> graphData,
    int dataPointIndex,
    String ssid,
    bool isMonitoring,
  });
}

/// @nodoc
class _$SignalStateCopyWithImpl<$Res, $Val extends SignalState>
    implements $SignalStateCopyWith<$Res> {
  _$SignalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentRssi = null,
    Object? graphData = null,
    Object? dataPointIndex = null,
    Object? ssid = null,
    Object? isMonitoring = null,
  }) {
    return _then(
      _value.copyWith(
            currentRssi: null == currentRssi
                ? _value.currentRssi
                : currentRssi // ignore: cast_nullable_to_non_nullable
                      as int,
            graphData: null == graphData
                ? _value.graphData
                : graphData // ignore: cast_nullable_to_non_nullable
                      as List<FlSpot>,
            dataPointIndex: null == dataPointIndex
                ? _value.dataPointIndex
                : dataPointIndex // ignore: cast_nullable_to_non_nullable
                      as int,
            ssid: null == ssid
                ? _value.ssid
                : ssid // ignore: cast_nullable_to_non_nullable
                      as String,
            isMonitoring: null == isMonitoring
                ? _value.isMonitoring
                : isMonitoring // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SignalStateImplCopyWith<$Res>
    implements $SignalStateCopyWith<$Res> {
  factory _$$SignalStateImplCopyWith(
    _$SignalStateImpl value,
    $Res Function(_$SignalStateImpl) then,
  ) = __$$SignalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int currentRssi,
    List<FlSpot> graphData,
    int dataPointIndex,
    String ssid,
    bool isMonitoring,
  });
}

/// @nodoc
class __$$SignalStateImplCopyWithImpl<$Res>
    extends _$SignalStateCopyWithImpl<$Res, _$SignalStateImpl>
    implements _$$SignalStateImplCopyWith<$Res> {
  __$$SignalStateImplCopyWithImpl(
    _$SignalStateImpl _value,
    $Res Function(_$SignalStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentRssi = null,
    Object? graphData = null,
    Object? dataPointIndex = null,
    Object? ssid = null,
    Object? isMonitoring = null,
  }) {
    return _then(
      _$SignalStateImpl(
        currentRssi: null == currentRssi
            ? _value.currentRssi
            : currentRssi // ignore: cast_nullable_to_non_nullable
                  as int,
        graphData: null == graphData
            ? _value._graphData
            : graphData // ignore: cast_nullable_to_non_nullable
                  as List<FlSpot>,
        dataPointIndex: null == dataPointIndex
            ? _value.dataPointIndex
            : dataPointIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        ssid: null == ssid
            ? _value.ssid
            : ssid // ignore: cast_nullable_to_non_nullable
                  as String,
        isMonitoring: null == isMonitoring
            ? _value.isMonitoring
            : isMonitoring // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SignalStateImpl implements _SignalState {
  _$SignalStateImpl({
    this.currentRssi = 0,
    final List<FlSpot> graphData = const [],
    this.dataPointIndex = 0,
    this.ssid = '—',
    this.isMonitoring = false,
  }) : _graphData = graphData;

  @override
  @JsonKey()
  final int currentRssi;
  final List<FlSpot> _graphData;
  @override
  @JsonKey()
  List<FlSpot> get graphData {
    if (_graphData is EqualUnmodifiableListView) return _graphData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_graphData);
  }

  @override
  @JsonKey()
  final int dataPointIndex;
  @override
  @JsonKey()
  final String ssid;
  @override
  @JsonKey()
  final bool isMonitoring;

  @override
  String toString() {
    return 'SignalState(currentRssi: $currentRssi, graphData: $graphData, dataPointIndex: $dataPointIndex, ssid: $ssid, isMonitoring: $isMonitoring)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignalStateImpl &&
            (identical(other.currentRssi, currentRssi) ||
                other.currentRssi == currentRssi) &&
            const DeepCollectionEquality().equals(
              other._graphData,
              _graphData,
            ) &&
            (identical(other.dataPointIndex, dataPointIndex) ||
                other.dataPointIndex == dataPointIndex) &&
            (identical(other.ssid, ssid) || other.ssid == ssid) &&
            (identical(other.isMonitoring, isMonitoring) ||
                other.isMonitoring == isMonitoring));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentRssi,
    const DeepCollectionEquality().hash(_graphData),
    dataPointIndex,
    ssid,
    isMonitoring,
  );

  /// Create a copy of SignalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignalStateImplCopyWith<_$SignalStateImpl> get copyWith =>
      __$$SignalStateImplCopyWithImpl<_$SignalStateImpl>(this, _$identity);
}

abstract class _SignalState implements SignalState {
  factory _SignalState({
    final int currentRssi,
    final List<FlSpot> graphData,
    final int dataPointIndex,
    final String ssid,
    final bool isMonitoring,
  }) = _$SignalStateImpl;

  @override
  int get currentRssi;
  @override
  List<FlSpot> get graphData;
  @override
  int get dataPointIndex;
  @override
  String get ssid;
  @override
  bool get isMonitoring;

  /// Create a copy of SignalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignalStateImplCopyWith<_$SignalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
