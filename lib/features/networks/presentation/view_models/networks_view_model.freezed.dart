// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'networks_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NetworksState {
  List<AccessPointModel> get networks => throw _privateConstructorUsedError;
  bool get isScanning => throw _privateConstructorUsedError;
  bool get hasPermission => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  DateTime? get lastScan => throw _privateConstructorUsedError;

  /// Create a copy of NetworksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NetworksStateCopyWith<NetworksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworksStateCopyWith<$Res> {
  factory $NetworksStateCopyWith(
    NetworksState value,
    $Res Function(NetworksState) then,
  ) = _$NetworksStateCopyWithImpl<$Res, NetworksState>;
  @useResult
  $Res call({
    List<AccessPointModel> networks,
    bool isScanning,
    bool hasPermission,
    String? error,
    DateTime? lastScan,
  });
}

/// @nodoc
class _$NetworksStateCopyWithImpl<$Res, $Val extends NetworksState>
    implements $NetworksStateCopyWith<$Res> {
  _$NetworksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NetworksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networks = null,
    Object? isScanning = null,
    Object? hasPermission = null,
    Object? error = freezed,
    Object? lastScan = freezed,
  }) {
    return _then(
      _value.copyWith(
            networks: null == networks
                ? _value.networks
                : networks // ignore: cast_nullable_to_non_nullable
                      as List<AccessPointModel>,
            isScanning: null == isScanning
                ? _value.isScanning
                : isScanning // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasPermission: null == hasPermission
                ? _value.hasPermission
                : hasPermission // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastScan: freezed == lastScan
                ? _value.lastScan
                : lastScan // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NetworksStateImplCopyWith<$Res>
    implements $NetworksStateCopyWith<$Res> {
  factory _$$NetworksStateImplCopyWith(
    _$NetworksStateImpl value,
    $Res Function(_$NetworksStateImpl) then,
  ) = __$$NetworksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<AccessPointModel> networks,
    bool isScanning,
    bool hasPermission,
    String? error,
    DateTime? lastScan,
  });
}

/// @nodoc
class __$$NetworksStateImplCopyWithImpl<$Res>
    extends _$NetworksStateCopyWithImpl<$Res, _$NetworksStateImpl>
    implements _$$NetworksStateImplCopyWith<$Res> {
  __$$NetworksStateImplCopyWithImpl(
    _$NetworksStateImpl _value,
    $Res Function(_$NetworksStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NetworksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networks = null,
    Object? isScanning = null,
    Object? hasPermission = null,
    Object? error = freezed,
    Object? lastScan = freezed,
  }) {
    return _then(
      _$NetworksStateImpl(
        networks: null == networks
            ? _value._networks
            : networks // ignore: cast_nullable_to_non_nullable
                  as List<AccessPointModel>,
        isScanning: null == isScanning
            ? _value.isScanning
            : isScanning // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasPermission: null == hasPermission
            ? _value.hasPermission
            : hasPermission // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastScan: freezed == lastScan
            ? _value.lastScan
            : lastScan // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$NetworksStateImpl implements _NetworksState {
  _$NetworksStateImpl({
    final List<AccessPointModel> networks = const [],
    this.isScanning = false,
    this.hasPermission = false,
    this.error,
    this.lastScan,
  }) : _networks = networks;

  final List<AccessPointModel> _networks;
  @override
  @JsonKey()
  List<AccessPointModel> get networks {
    if (_networks is EqualUnmodifiableListView) return _networks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_networks);
  }

  @override
  @JsonKey()
  final bool isScanning;
  @override
  @JsonKey()
  final bool hasPermission;
  @override
  final String? error;
  @override
  final DateTime? lastScan;

  @override
  String toString() {
    return 'NetworksState(networks: $networks, isScanning: $isScanning, hasPermission: $hasPermission, error: $error, lastScan: $lastScan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworksStateImpl &&
            const DeepCollectionEquality().equals(other._networks, _networks) &&
            (identical(other.isScanning, isScanning) ||
                other.isScanning == isScanning) &&
            (identical(other.hasPermission, hasPermission) ||
                other.hasPermission == hasPermission) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.lastScan, lastScan) ||
                other.lastScan == lastScan));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_networks),
    isScanning,
    hasPermission,
    error,
    lastScan,
  );

  /// Create a copy of NetworksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworksStateImplCopyWith<_$NetworksStateImpl> get copyWith =>
      __$$NetworksStateImplCopyWithImpl<_$NetworksStateImpl>(this, _$identity);
}

abstract class _NetworksState implements NetworksState {
  factory _NetworksState({
    final List<AccessPointModel> networks,
    final bool isScanning,
    final bool hasPermission,
    final String? error,
    final DateTime? lastScan,
  }) = _$NetworksStateImpl;

  @override
  List<AccessPointModel> get networks;
  @override
  bool get isScanning;
  @override
  bool get hasPermission;
  @override
  String? get error;
  @override
  DateTime? get lastScan;

  /// Create a copy of NetworksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworksStateImplCopyWith<_$NetworksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
