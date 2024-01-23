import 'package:complete_flutter_project/core/networking/api_service.dart';
import 'package:complete_flutter_project/core/networking/dio_factory.dart';
import 'package:complete_flutter_project/features/signup/data/repos/signup_repo.dart';
import 'package:complete_flutter_project/features/signup/logic/signup_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/repos/login_repo.dart';
import '../../features/login/logic/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  /// Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  /// Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  /**
   * registerLazySingleton: create an one instance from it, and I will use it in the all application.
   * registerFactory: every time I need or use this, create from it an instance (copy).
   */

  /// Signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
