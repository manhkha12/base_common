import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/models/module.dart';
import 'package:smart_home/models/sensor.dart';

part 'module_detail_state.freezed.dart';

@freezed
class ModuleDetailState with _$ModuleDetailState {
  factory ModuleDetailState({
    @Default(true) bool isLoading,
    required Module module,

     List<Sensor>? sensors,

  }) = _ModuleDetailState;

  ModuleDetailState._();

  bool get isOnline => module.isOnline;


}
