import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/features/device/module_detail/module_detail_cubit/module_detail_state.dart';
import 'package:smart_home/models/module.dart';
import 'package:smart_home/repository/module_repository.dart';
import 'package:smart_home/repository/user_repository.dart';

class ModuleDetailCubit extends Cubit<ModuleDetailState>{
  final UserRepository userRepository;
  final ModuleRespository moduleRespository;
  final Module module;

 ModuleDetailCubit({
    required this.userRepository,
    required this.moduleRespository,
    required this.module,
  }) : super(ModuleDetailState(module: module,sensors: module.sensors)) {
    // userRepository.socket?.on(SocketEvent.MODULE_STATE.value, onModuleUpdate);
  }
}