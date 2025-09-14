import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:smart_home/features/common/splash_screen.dart';
import 'package:smart_home/features/device/add_module/add_module_screen.dart';
import 'package:smart_home/features/device/add_module/cubit/add_module_cubit.dart';
import 'package:smart_home/features/device/module_detail/module_detail.dart';
import 'package:smart_home/features/device/module_detail/module_detail_cubit/module_detail_cubit.dart';
import 'package:smart_home/features/device/module_detail/module_menu_cubit/module_menu_cubit.dart';
import 'package:smart_home/features/device/module_page/module_cubit/module_cubit.dart';
import 'package:smart_home/features/home/component/room_detail/room_detail.dart';
import 'package:smart_home/features/intro/intro_screen.dart';
import 'package:smart_home/features/login/component/login_cubit.dart';
import 'package:smart_home/features/login/login_screen.dart';
import 'package:smart_home/features/main_screen.dart';
import 'package:smart_home/features/register/cubit/signup_cubit.dart';
import 'package:smart_home/features/register/register.dart';
import 'package:smart_home/models/room.dart';
import 'package:smart_home/shared/cubits/app_cubit/app_cubit.dart';

class RouteName {
  static const String splash = '/';
  static const String main = '/main';
  static const String register = '/register';
  static const String login = '/login';
  static const String intro = '/intro';
  static const String addModule = '/addModule';
  static const String roomDetail = '/roomDetail';
  static const String moduleDetail = '/moduleDetail';
}

RouteFactory onGenerateRoutes() {
  return (RouteSettings settings) {
    if (settings.name == RouteName.splash) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => const SplashScreen(),
      );
    }
    if (settings.name == RouteName.main) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => BlocProvider(
          create: (_) => GetIt.I<ModuleCubit>(),
          child: const MainScreen(),
        ),
      );
      // return MaterialPageRoute(
      //   settings: settings,
      //   builder: (context) => const MainScreen(),
      // );
    }

    if (settings.name == RouteName.roomDetail) {
     final args = settings.arguments as Map;
      return MaterialPageRoute(
        settings: settings,
        builder: (context) =>  RoomDetaiScreen(room: args['room'] as Room,),
      );
    }
    if (settings.name == RouteName.addModule) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => BlocProvider(
          create: (_) => GetIt.I<AddModuleCubit>(),
          child: const AddModuleScreen(),
        ),
      );
    }
    if (settings.name == RouteName.intro) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => IntroScreen(),
      );
    }

    if (settings.name == RouteName.moduleDetail) {
      final args = settings.arguments as Map;
      final module = args['module'];

      return MaterialPageRoute(
        settings: settings,
        builder: (context) => MultiBlocProvider(
          providers: [
            BlocProvider<ModuleMenuCubit>(
              create: (_) => GetIt.I<ModuleMenuCubit>(param1: module),
            ),
            BlocProvider<ModuleDetailCubit>(
              create: (_) => GetIt.I<ModuleDetailCubit>(param1: module),
            ),
          ],
          child: const ModuleDetailScreen(),
        ),
      );
    }

    if (settings.name == RouteName.register) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => BlocProvider(
          create: (_) => GetIt.I<SignupCubit>(),
          child: const RegisterScreen(),
        ),
      );
    }
    if (settings.name == RouteName.login) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => BlocProvider(
          create: (_) => GetIt.I<LoginCubit>(),
          child: const LoginScreen(),
        ),
      );
    }
  };
}
