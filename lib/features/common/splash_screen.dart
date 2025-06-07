import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_home/gen/assets.gen.dart';
import 'package:smart_home/shared/cubits/app_cubit/app_cubit.dart';

import '../../routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    context.read<AppCubit>().checkAuthState();
    _controller = AnimationController(vsync: this);
    _initApp();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _initApp() async {
    await Future.delayed(const Duration(seconds: 1)); // Splash delay

    final prefs = await SharedPreferences.getInstance();
    final isFirstLaunch = prefs.getBool('is_first_launch') ?? true;

    if (isFirstLaunch) {
      // chưa từng mở app
      Navigator.of(context).pushReplacementNamed(RouteName.intro);
    } else {
      // đã từng mở -> kiểm tra login
      context.read<AppCubit>().checkAuthState();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocListener<AppCubit, AppState>(
      listener: (context, state) => state.whenOrNull(
        authorized: (user) =>
            Navigator.of(context).pushReplacementNamed(RouteName.main),
        unAuthorized: () =>
            Navigator.of(context).pushReplacementNamed(RouteName.login),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Lottie.asset(
            Assets.images.smartHome,
            controller: _controller,
            onLoaded: (composition) {
              _controller
                ..duration = composition.duration
                ..forward();
            },
          ),
        ),
      ),
    ));
  }
}
