// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomImpl _$$RoomImplFromJson(Map<String, dynamic> json) => _$RoomImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      homeId: json['home_id'] as String,
      background: json['background'] as String?,
      modules:
          (json['modules'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$RoomImplToJson(_$RoomImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'home_id': instance.homeId,
      'background': instance.background,
      'modules': instance.modules,
    };
