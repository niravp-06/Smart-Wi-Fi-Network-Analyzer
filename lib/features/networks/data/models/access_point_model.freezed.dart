// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_point_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AccessPointModel {
  String get ssid => throw _privateConstructorUsedError;
  String get bssid => throw _privateConstructorUsedError;
  int get rssi => throw _privateConstructorUsedError;
  int get frequency => throw _privateConstructorUsedError;
  String get capabilities => throw _privateConstructorUsedError;

  /// Create a copy of AccessPointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccessPointModelCopyWith<AccessPointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessPointModelCopyWith<$Res> {
  factory $AccessPointModelCopyWith(
    AccessPointModel value,
    $Res Function(AccessPointModel) then,
  ) = _$AccessPointModelCopyWithImpl<$Res, AccessPointModel>;
  @useResult
  $Res call({
    String ssid,
    String bssid,
    int rssi,
    int frequency,
    String capabilities,
  });
}

/// @nodoc
class _$AccessPointModelCopyWithImpl<$Res, $Val extends AccessPointModel>
    implements $AccessPointModelCopyWith<$Res> {
  _$AccessPointModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccessPointModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ssid = null,
    Object? bssid = null,
    Object? rssi = null,
    Object? frequency = null,
    Object? capabilities = null,
  }) {
    return _then(
      _value.copyWith(
            ssid: null == ssid
                ? _value.ssid
                : ssid // ignore: cast_nullable_to_non_nullable
                      as String,
            bssid: null == bssid
                ? _value.bssid
                : bssid // ignore: cast_nullable_to_non_nullable
                      as String,
            rssi: null == rssi
                ? _value.rssi
                : rssi // ignore: cast_nullable_to_non_nullable
                      as int,
            frequency: null == frequency
                ? _value.frequency
                : frequency // ignore: cast_nullable_to_non_nullable
                      as int,
            capabilities: null == capabilities
                ? _value.capabilities
                : capabilities // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AccessPointModelImplCopyWith<$Res>
    implements $AccessPointModelCopyWith<$Res> {
  factory _$$AccessPointModelImplCopyWith(
    _$AccessPointModelImpl value,
    $Res Function(_$AccessPointModelImpl) then,
  ) = __$$AccessPointModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String ssid,
    String bssid,
    int rssi,
    int frequency,
    String capabilities,
  });
}

/// @nodoc
class __$$AccessPointModelImplCopyWithImpl<$Res>
    extends _$AccessPointModelCopyWithImpl<$Res, _$AccessPointModelImpl>
    implements _$$AccessPointModelImplCopyWith<$Res> {
  __$$AccessPointModelImplCopyWithImpl(
    _$AccessPointModelImpl _value,
    $Res Function(_$AccessPointModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccessPointModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ssid = null,
    Object? bssid = null,
    Object? rssi = null,
    Object? frequency = null,
    Object? capabilities = null,
  }) {
    return _then(
      _$AccessPointModelImpl(
        ssid: null == ssid
            ? _value.ssid
            : ssid // ignore: cast_nullable_to_non_nullable
                  as String,
        bssid: null == bssid
            ? _value.bssid
            : bssid // ignore: cast_nullable_to_non_nullable
                  as String,
        rssi: null == rssi
            ? _value.rssi
            : rssi // ignore: cast_nullable_to_non_nullable
                  as int,
        frequency: null == frequency
            ? _value.frequency
            : frequency // ignore: cast_nullable_to_non_nullable
                  as int,
        capabilities: null == capabilities
            ? _value.capabilities
            : capabilities // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$AccessPointModelImpl extends _AccessPointModel {
  const _$AccessPointModelImpl({
    required this.ssid,
    required this.bssid,
    required this.rssi,
    required this.frequency,
    required this.capabilities,
  }) : super._();

  @override
  final String ssid;
  @override
  final String bssid;
  @override
  final int rssi;
  @override
  final int frequency;
  @override
  final String capabilities;

  @override
  String toString() {
    return 'AccessPointModel(ssid: $ssid, bssid: $bssid, rssi: $rssi, frequency: $frequency, capabilities: $capabilities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessPointModelImpl &&
            (identical(other.ssid, ssid) || other.ssid == ssid) &&
            (identical(other.bssid, bssid) || other.bssid == bssid) &&
            (identical(other.rssi, rssi) || other.rssi == rssi) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.capabilities, capabilities) ||
                other.capabilities == capabilities));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, ssid, bssid, rssi, frequency, capabilities);

  /// Create a copy of AccessPointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessPointModelImplCopyWith<_$AccessPointModelImpl> get copyWith =>
      __$$AccessPointModelImplCopyWithImpl<_$AccessPointModelImpl>(
        this,
        _$identity,
      );
}

abstract class _AccessPointModel extends AccessPointModel {
  const factory _AccessPointModel({
    required final String ssid,
    required final String bssid,
    required final int rssi,
    required final int frequency,
    required final String capabilities,
  }) = _$AccessPointModelImpl;
  const _AccessPointModel._() : super._();

  @override
  String get ssid;
  @override
  String get bssid;
  @override
  int get rssi;
  @override
  int get frequency;
  @override
  String get capabilities;

  /// Create a copy of AccessPointModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccessPointModelImplCopyWith<_$AccessPointModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
