import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/models/module.dart';


part 'module_menu_state.freezed.dart';

@freezed
class ModuleMenuState with _$ModuleMenuState {
  factory ModuleMenuState({
    @Default(false) bool isUpdating,
    required Module module,
  }) = _ModuleMenuState;

  ModuleMenuState._();

  bool get isOnline => module.isOnline;
}
