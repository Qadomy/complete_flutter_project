import 'package:complete_flutter_project/core/routing/routes.dart';
import 'package:complete_flutter_project/features/home/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/login/logic/login_cubit.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    return switch (settings.name) {
      Routes.homeScreen => materialPageRoute(const HomeScreen()),
      Routes.onBoardingScreen => materialPageRoute(const OnBoardingScreen()),
      Routes.loginScreen => materialPageRoute(BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          child: const LoginScreen())),
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
