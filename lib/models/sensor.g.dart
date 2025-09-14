// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SensorImpl _$$SensorImplFromJson(Map<String, dynamic> json) => _$SensorImpl(
      id: json['_id'] as String?,
      sensorId: json['sensor_id'] as String,
      type: json['type'] as String,
      name: json['name'] as String?,
      state: const StateConverter().fromJson(json['state'] as String?),
      temperature: (json['temperature'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeConverter().fromJson),
      moduleId: json['module_id'] as String?,
    );

Map<String, dynamic> _$$SensorImplToJson(_$SensorImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'sensor_id': instance.sensorId,
      'type': instance.type,
      'name': instance.name,
      'state': const StateConverter().toJson(instance.state),
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'updated_at': _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeConverter().toJson),
      'module_id': instance.moduleId,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
