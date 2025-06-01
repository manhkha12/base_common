import 'package:flutter/material.dart';
import 'package:smart_home/features/common/splash_screen.dart';

class RouteName{
    static const String splash = '/';
}
RouteFactory onGenerateRoutes(){
  return (RouteSettings settings) {
    if (settings.name == RouteName.splash) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => const SplashScreen(),
      );
    }};
}