import 'package:complete_flutter_project/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    return switch (settings.name) {
      Routes.onBoardingScreen => materialPageRoute(const OnBoardingScreen()),
      Routes.loginScreen => materialPageRoute(const LoginScreen()),
      _ => materialPageRoute(Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        )),
    };
  }

  MaterialPageRoute<dynamic> materialPageRoute(dynamic onBoardingScreen) =>
      MaterialPageRoute(builder: (_) => onBoardingScreen);
}
