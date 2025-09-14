import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/shared/utils/json_converter.dart';

part 'sensor.freezed.dart';
part 'sensor.g.dart';

@freezed
class Sensor with _$Sensor {
  const factory Sensor({
    @JsonKey(name: '_id') String? id,   // MongoDB _id
    @JsonKey(name: 'sensor_id') required String sensorId,
    required String type,
    String? name,
    @StateConverter() int? state,      //0:1
    double? temperature,
    double? humidity,
    @JsonKey(name: 'updated_at') @DateTimeConverter() DateTime? updatedAt,
    @JsonKey(name: 'module_id')String? moduleId,       // nếu bạn muốn map module_id
  }) = _Sensor;

  factory Sensor.fromJson(Map<String, dynamic> json) =>
      _$SensorFromJson(json);

}
