import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
class Room with _$Room {
  factory Room({
    @JsonKey(name: '_id') required String id,
    required String name,
    @JsonKey(name: 'home_id') required String homeId, // sửa từ house_id → home_id
    String? background,
    List<String>? modules, // thêm modules để map từ backend
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
