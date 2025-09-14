import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/device/module_detail/module_menu_cubit/module_menu_state.dart';
import 'package:smart_home/models/module.dart';
import 'package:smart_home/repository/module_repository.dart';
import 'package:smart_home/repository/user_repository.dart';

class ModuleMenuCubit extends Cubit<ModuleMenuState> {
  final UserRepository userRepository;
  final ModuleRespository moduleRespository;
  final Module module;

  ModuleMenuCubit({
    required this.userRepository,
    required this.moduleRespository,
    required this.module,
  }) : super(ModuleMenuState(module: module)) {
    // userRepository.socket?.on(SocketEvent.MODULE_STATE.value, onModuleUpdate);
  }
  }