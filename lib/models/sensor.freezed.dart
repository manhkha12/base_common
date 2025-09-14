// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sensor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sensor _$SensorFromJson(Map<String, dynamic> json) {
  return _Sensor.fromJson(json);
}

/// @nodoc
mixin _$Sensor {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError; // MongoDB _id
  @JsonKey(name: 'sensor_id')
  String get sensorId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @StateConverter()
  int? get state => throw _privateConstructorUsedError; //0:1
  double? get temperature => throw _privateConstructorUsedError;
  double? get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @DateTimeConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'module_id')
  String? get moduleId => throw _privateConstructorUsedError;

  /// Serializes this Sensor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Sensor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SensorCopyWith<Sensor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensorCopyWith<$Res> {
  factory $SensorCopyWith(Sensor value, $Res Function(Sensor) then) =
      _$SensorCopyWithImpl<$Res, Sensor>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'sensor_id') String sensorId,
      String type,
      String? name,
      @StateConverter() int? state,
      double? temperature,
      double? humidity,
      @JsonKey(name: 'updated_at') @DateTimeConverter() DateTime? updatedAt,
      @JsonKey(name: 'module_id') String? moduleId});
}

/// @nodoc
class _$SensorCopyWithImpl<$Res, $Val extends Sensor>
    implements $SensorCopyWith<$Res> {
  _$SensorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sensor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sensorId = null,
    Object? type = null,
    Object? name = freezed,
    Object? state = freezed,
    Object? temperature = freezed,
    Object? humidity = freezed,
    Object? updatedAt = freezed,
    Object? moduleId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sensorId: null == sensorId
          ? _value.sensorId
          : sensorId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      moduleId: freezed == moduleId
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SensorImplCopyWith<$Res> implements $SensorCopyWith<$Res> {
  factory _$$SensorImplCopyWith(
          _$SensorImpl value, $Res Function(_$SensorImpl) then) =
      __$$SensorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'sensor_id') String sensorId,
      String type,
      String? name,
      @StateConverter() int? state,
      double? temperature,
      double? humidity,
      @JsonKey(name: 'updated_at') @DateTimeConverter() DateTime? updatedAt,
      @JsonKey(name: 'module_id') String? moduleId});
}

/// @nodoc
class __$$SensorImplCopyWithImpl<$Res>
    extends _$SensorCopyWithImpl<$Res, _$SensorImpl>
    implements _$$SensorImplCopyWith<$Res> {
  __$$SensorImplCopyWithImpl(
      _$SensorImpl _value, $Res Function(_$SensorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Sensor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sensorId = null,
    Object? type = null,
    Object? name = freezed,
    Object? state = freezed,
    Object? temperature = freezed,
    Object? humidity = freezed,
    Object? updatedAt = freezed,
    Object? moduleId = freezed,
  }) {
    return _then(_$SensorImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sensorId: null == sensorId
          ? _value.sensorId
          : sensorId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      moduleId: freezed == moduleId
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SensorImpl implements _Sensor {
  const _$SensorImpl(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'sensor_id') required this.sensorId,
      required this.type,
      this.name,
      @StateConverter() this.state,
      this.temperature,
      this.humidity,
      @JsonKey(name: 'updated_at') @DateTimeConverter() this.updatedAt,
      @JsonKey(name: 'module_id') this.moduleId});

  factory _$SensorImpl.fromJson(Map<String, dynamic> json) =>
      _$$SensorImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
// MongoDB _id
  @override
  @JsonKey(name: 'sensor_id')
  final String sensorId;
  @override
  final String type;
  @override
  final String? name;
  @override
  @StateConverter()
  final int? state;
//0:1
  @override
  final double? temperature;
  @override
  final double? humidity;
  @override
  @JsonKey(name: 'updated_at')
  @DateTimeConverter()
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'module_id')
  final String? moduleId;

  @override
  String toString() {
    return 'Sensor(id: $id, sensorId: $sensorId, type: $type, name: $name, state: $state, temperature: $temperature, humidity: $humidity, updatedAt: $updatedAt, moduleId: $moduleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SensorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sensorId, sensorId) ||
                other.sensorId == sensorId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.moduleId, moduleId) ||
                other.moduleId == moduleId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, sensorId, type, name, state,
      temperature, humidity, updatedAt, moduleId);

  /// Create a copy of Sensor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SensorImplCopyWith<_$SensorImpl> get copyWith =>
      __$$SensorImplCopyWithImpl<_$SensorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SensorImplToJson(
      this,
    );
  }
}

abstract class _Sensor implements Sensor {
  const factory _Sensor(
      {@JsonKey(name: '_id') final String? id,
      @JsonKey(name: 'sensor_id') required final String sensorId,
      required final String type,
      final String? name,
      @StateConverter() final int? state,
      final double? temperature,
      final double? humidity,
      @JsonKey(name: 'updated_at')
      @DateTimeConverter()
      final DateTime? updatedAt,
      @JsonKey(name: 'module_id') final String? moduleId}) = _$SensorImpl;

  factory _Sensor.fromJson(Map<String, dynamic> json) = _$SensorImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id; // MongoDB _id
  @override
  @JsonKey(name: 'sensor_id')
  String get sensorId;
  @override
  String get type;
  @override
  String? get name;
  @override
  @StateConverter()
  int? get state; //0:1
  @override
  double? get temperature;
  @override
  double? get humidity;
  @override
  @JsonKey(name: 'updated_at')
  @DateTimeConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'module_id')
  String? get moduleId;

  /// Create a copy of Sensor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SensorImplCopyWith<_$SensorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
