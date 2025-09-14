import 'package:smart_home/models/app_error.dart';
import 'package:smart_home/models/module.dart';
import 'package:smart_home/models/room.dart';
import 'package:smart_home/models/weather_forecast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  factory HomePageState({
    @Default(false) bool isLoading,
    @Default([]) List<dynamic> images,
    String? name,
    String? image,
    @Default([]) List<Module> modules, // 👉 list modules để hiển thị UI
    Module? selectedModule,            // 👉 module người dùng chọn khi add room
    String? homeId,
    @Default([]) List<Room> rooms,
    WeatherForecast? weatherForecast,
    AppError? error,
    @Default(false) bool isSuccess,
  }) = _HomePageState;

  HomePageState._();

  Map<String, dynamic> toParms() {
    return {
      'home_id': homeId,
      'name': name,
      // khi tạo home thì chỉ gửi selectedModule thôi
      'modules': selectedModule != null ? [selectedModule!.id] : [],
      'background': image,
    };
  }
}

