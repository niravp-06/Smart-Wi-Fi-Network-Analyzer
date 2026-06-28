// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NetworkInfoModel _$NetworkInfoModelFromJson(Map<String, dynamic> json) {
  return _NetworkInfoModel.fromJson(json);
}

/// @nodoc
mixin _$NetworkInfoModel {
  String get ssid => throw _privateConstructorUsedError;
  String get bssid => throw _privateConstructorUsedError;
  String get localIp => throw _privateConstructorUsedError;
  String get publicIp => throw _privateConstructorUsedError;
  String get frequency => throw _privateConstructorUsedError;
  String get band => throw _privateConstructorUsedError;
  String get securityType => throw _privateConstructorUsedError;
  String get wifiVersion => throw _privateConstructorUsedError;
  int get rssi => throw _privateConstructorUsedError;
  String get ispName => throw _privateConstructorUsedError;
  String get ispOrg => throw _privateConstructorUsedError;
  String? get ipVersion => throw _privateConstructorUsedError;
  String? get subnet => throw _privateConstructorUsedError;
  String? get gateway => throw _privateConstructorUsedError;

  /// Serializes this NetworkInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NetworkInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NetworkInfoModelCopyWith<NetworkInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkInfoModelCopyWith<$Res> {
  factory $NetworkInfoModelCopyWith(
    NetworkInfoModel value,
    $Res Function(NetworkInfoModel) then,
  ) = _$NetworkInfoModelCopyWithImpl<$Res, NetworkInfoModel>;
  @useResult
  $Res call({
    String ssid,
    String bssid,
    String localIp,
    String publicIp,
    String frequency,
    String band,
    String securityType,
    String wifiVersion,
    int rssi,
    String ispName,
    String ispOrg,
    String? ipVersion,
    String? subnet,
    String? gateway,
  });
}

/// @nodoc
class _$NetworkInfoModelCopyWithImpl<$Res, $Val extends NetworkInfoModel>
    implements $NetworkInfoModelCopyWith<$Res> {
  _$NetworkInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NetworkInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ssid = null,
    Object? bssid = null,
    Object? localIp = null,
    Object? publicIp = null,
    Object? frequency = null,
    Object? band = null,
    Object? securityType = null,
    Object? wifiVersion = null,
    Object? rssi = null,
    Object? ispName = null,
    Object? ispOrg = null,
    Object? ipVersion = freezed,
    Object? subnet = freezed,
    Object? gateway = freezed,
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
            localIp: null == localIp
                ? _value.localIp
                : localIp // ignore: cast_nullable_to_non_nullable
                      as String,
            publicIp: null == publicIp
                ? _value.publicIp
                : publicIp // ignore: cast_nullable_to_non_nullable
                      as String,
            frequency: null == frequency
                ? _value.frequency
                : frequency // ignore: cast_nullable_to_non_nullable
                      as String,
            band: null == band
                ? _value.band
                : band // ignore: cast_nullable_to_non_nullable
                      as String,
            securityType: null == securityType
                ? _value.securityType
                : securityType // ignore: cast_nullable_to_non_nullable
                      as String,
            wifiVersion: null == wifiVersion
                ? _value.wifiVersion
                : wifiVersion // ignore: cast_nullable_to_non_nullable
                      as String,
            rssi: null == rssi
                ? _value.rssi
                : rssi // ignore: cast_nullable_to_non_nullable
                      as int,
            ispName: null == ispName
                ? _value.ispName
                : ispName // ignore: cast_nullable_to_non_nullable
                      as String,
            ispOrg: null == ispOrg
                ? _value.ispOrg
                : ispOrg // ignore: cast_nullable_to_non_nullable
                      as String,
            ipVersion: freezed == ipVersion
                ? _value.ipVersion
                : ipVersion // ignore: cast_nullable_to_non_nullable
                      as String?,
            subnet: freezed == subnet
                ? _value.subnet
                : subnet // ignore: cast_nullable_to_non_nullable
                      as String?,
            gateway: freezed == gateway
                ? _value.gateway
                : gateway // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NetworkInfoModelImplCopyWith<$Res>
    implements $NetworkInfoModelCopyWith<$Res> {
  factory _$$NetworkInfoModelImplCopyWith(
    _$NetworkInfoModelImpl value,
    $Res Function(_$NetworkInfoModelImpl) then,
  ) = __$$NetworkInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String ssid,
    String bssid,
    String localIp,
    String publicIp,
    String frequency,
    String band,
    String securityType,
    String wifiVersion,
    int rssi,
    String ispName,
    String ispOrg,
    String? ipVersion,
    String? subnet,
    String? gateway,
  });
}

/// @nodoc
class __$$NetworkInfoModelImplCopyWithImpl<$Res>
    extends _$NetworkInfoModelCopyWithImpl<$Res, _$NetworkInfoModelImpl>
    implements _$$NetworkInfoModelImplCopyWith<$Res> {
  __$$NetworkInfoModelImplCopyWithImpl(
    _$NetworkInfoModelImpl _value,
    $Res Function(_$NetworkInfoModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NetworkInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ssid = null,
    Object? bssid = null,
    Object? localIp = null,
    Object? publicIp = null,
    Object? frequency = null,
    Object? band = null,
    Object? securityType = null,
    Object? wifiVersion = null,
    Object? rssi = null,
    Object? ispName = null,
    Object? ispOrg = null,
    Object? ipVersion = freezed,
    Object? subnet = freezed,
    Object? gateway = freezed,
  }) {
    return _then(
      _$NetworkInfoModelImpl(
        ssid: null == ssid
            ? _value.ssid
            : ssid // ignore: cast_nullable_to_non_nullable
                  as String,
        bssid: null == bssid
            ? _value.bssid
            : bssid // ignore: cast_nullable_to_non_nullable
                  as String,
        localIp: null == localIp
            ? _value.localIp
            : localIp // ignore: cast_nullable_to_non_nullable
                  as String,
        publicIp: null == publicIp
            ? _value.publicIp
            : publicIp // ignore: cast_nullable_to_non_nullable
                  as String,
        frequency: null == frequency
            ? _value.frequency
            : frequency // ignore: cast_nullable_to_non_nullable
                  as String,
        band: null == band
            ? _value.band
            : band // ignore: cast_nullable_to_non_nullable
                  as String,
        securityType: null == securityType
            ? _value.securityType
            : securityType // ignore: cast_nullable_to_non_nullable
                  as String,
        wifiVersion: null == wifiVersion
            ? _value.wifiVersion
            : wifiVersion // ignore: cast_nullable_to_non_nullable
                  as String,
        rssi: null == rssi
            ? _value.rssi
            : rssi // ignore: cast_nullable_to_non_nullable
                  as int,
        ispName: null == ispName
            ? _value.ispName
            : ispName // ignore: cast_nullable_to_non_nullable
                  as String,
        ispOrg: null == ispOrg
            ? _value.ispOrg
            : ispOrg // ignore: cast_nullable_to_non_nullable
                  as String,
        ipVersion: freezed == ipVersion
            ? _value.ipVersion
            : ipVersion // ignore: cast_nullable_to_non_nullable
                  as String?,
        subnet: freezed == subnet
            ? _value.subnet
            : subnet // ignore: cast_nullable_to_non_nullable
                  as String?,
        gateway: freezed == gateway
            ? _value.gateway
            : gateway // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NetworkInfoModelImpl extends _NetworkInfoModel {
  const _$NetworkInfoModelImpl({
    required this.ssid,
    required this.bssid,
    required this.localIp,
    required this.publicIp,
    required this.frequency,
    required this.band,
    required this.securityType,
    required this.wifiVersion,
    required this.rssi,
    required this.ispName,
    required this.ispOrg,
    this.ipVersion,
    this.subnet,
    this.gateway,
  }) : super._();

  factory _$NetworkInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworkInfoModelImplFromJson(json);

  @override
  final String ssid;
  @override
  final String bssid;
  @override
  final String localIp;
  @override
  final String publicIp;
  @override
  final String frequency;
  @override
  final String band;
  @override
  final String securityType;
  @override
  final String wifiVersion;
  @override
  final int rssi;
  @override
  final String ispName;
  @override
  final String ispOrg;
  @override
  final String? ipVersion;
  @override
  final String? subnet;
  @override
  final String? gateway;

  @override
  String toString() {
    return 'NetworkInfoModel(ssid: $ssid, bssid: $bssid, localIp: $localIp, publicIp: $publicIp, frequency: $frequency, band: $band, securityType: $securityType, wifiVersion: $wifiVersion, rssi: $rssi, ispName: $ispName, ispOrg: $ispOrg, ipVersion: $ipVersion, subnet: $subnet, gateway: $gateway)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkInfoModelImpl &&
            (identical(other.ssid, ssid) || other.ssid == ssid) &&
            (identical(other.bssid, bssid) || other.bssid == bssid) &&
            (identical(other.localIp, localIp) || other.localIp == localIp) &&
            (identical(other.publicIp, publicIp) ||
                other.publicIp == publicIp) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.band, band) || other.band == band) &&
            (identical(other.securityType, securityType) ||
                other.securityType == securityType) &&
            (identical(other.wifiVersion, wifiVersion) ||
                other.wifiVersion == wifiVersion) &&
            (identical(other.rssi, rssi) || other.rssi == rssi) &&
            (identical(other.ispName, ispName) || other.ispName == ispName) &&
            (identical(other.ispOrg, ispOrg) || other.ispOrg == ispOrg) &&
            (identical(other.ipVersion, ipVersion) ||
                other.ipVersion == ipVersion) &&
            (identical(other.subnet, subnet) || other.subnet == subnet) &&
            (identical(other.gateway, gateway) || other.gateway == gateway));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    ssid,
    bssid,
    localIp,
    publicIp,
    frequency,
    band,
    securityType,
    wifiVersion,
    rssi,
    ispName,
    ispOrg,
    ipVersion,
    subnet,
    gateway,
  );

  /// Create a copy of NetworkInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkInfoModelImplCopyWith<_$NetworkInfoModelImpl> get copyWith =>
      __$$NetworkInfoModelImplCopyWithImpl<_$NetworkInfoModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworkInfoModelImplToJson(this);
  }
}

abstract class _NetworkInfoModel extends NetworkInfoModel {
  const factory _NetworkInfoModel({
    required final String ssid,
    required final String bssid,
    required final String localIp,
    required final String publicIp,
    required final String frequency,
    required final String band,
    required final String securityType,
    required final String wifiVersion,
    required final int rssi,
    required final String ispName,
    required final String ispOrg,
    final String? ipVersion,
    final String? subnet,
    final String? gateway,
  }) = _$NetworkInfoModelImpl;
  const _NetworkInfoModel._() : super._();

  factory _NetworkInfoModel.fromJson(Map<String, dynamic> json) =
      _$NetworkInfoModelImpl.fromJson;

  @override
  String get ssid;
  @override
  String get bssid;
  @override
  String get localIp;
  @override
  String get publicIp;
  @override
  String get frequency;
  @override
  String get band;
  @override
  String get securityType;
  @override
  String get wifiVersion;
  @override
  int get rssi;
  @override
  String get ispName;
  @override
  String get ispOrg;
  @override
  String? get ipVersion;
  @override
  String? get subnet;
  @override
  String? get gateway;

  /// Create a copy of NetworkInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkInfoModelImplCopyWith<_$NetworkInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
