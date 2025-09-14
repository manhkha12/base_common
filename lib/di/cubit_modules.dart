import 'package:get_it/get_it.dart';
import 'package:smart_home/features/device/add_module/cubit/add_module_cubit.dart';
import 'package:smart_home/features/device/module_detail/module_detail_cubit/module_detail_cubit.dart';
import 'package:smart_home/features/device/module_detail/module_menu_cubit/module_menu_cubit.dart';
import 'package:smart_home/features/device/module_page/module_cubit/module_cubit.dart';
import 'package:smart_home/features/home/cubit/home_page_cubit.dart';
import 'package:smart_home/features/login/component/login_cubit.dart';
import 'package:smart_home/features/register/cubit/signup_cubit.dart';
import 'package:smart_home/models/module.dart';
import 'package:smart_home/shared/cubits/app_cubit/app_cubit.dart';
import 'package:smart_home/shared/cubits/socket_cubit/socket_cubit.dart';

Future<void> registerCubitModules(GetIt getIt) async {
  // register cubit modules
  getIt
    ..registerLazySingleton(() => AppCubit(authRepository: getIt()))
    ..registerFactory(
      () => SignupCubit(
        authRepository: getIt(),
      ),
    )
    ..registerFactory(
      () => LoginCubit(
        authRepository: getIt(),
        appCubit: getIt(),
      ),
    )
    ..registerFactory(
      () => AddModuleCubit(
        moduleRespository: getIt(),
        appCubit: getIt(),
        userRepository: getIt(),
      ),
    )
    ..registerFactory(
      () => ModuleCubit(
        moduleRespository: getIt(),
        userRepository: getIt(),
      ),
    )
    ..registerFactory(() => HomePageCubit(
          appCubit: getIt(),
          moduleRespository: getIt(),
        ))
    ..registerFactoryParam<ModuleMenuCubit, Module, dynamic>(
      (module, _) => ModuleMenuCubit(
        moduleRespository: getIt(),
        userRepository: getIt(),
        module: module,
      ),
    )
    ..registerFactoryParam<ModuleDetailCubit, Module, dynamic>(
      (module, _) => ModuleDetailCubit(
        moduleRespository: getIt(),
        userRepository: getIt(),
        module: module,
      ),
    );
  // ..registerLazySingleton(
  //   () => SocketCubit(userRepository: getIt()),
  // )

  // ..registerFactory(() => RenameNodeCubit(moduleRespository: getIt()))
  // ..registerFactory(
  //     () => GetHistoryConnectionCubit(moduleRespository: getIt()))
}
