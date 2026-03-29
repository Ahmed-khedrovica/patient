import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repos/specialties_repo.dart';
import '../../features/home/logic/specialities_cubit.dart';
import '../../features/login/data/repos/login_repo.dart';
import '../../features/login/logic/login_cubit.dart';
import '../../features/profile/data/repos/profile_repo.dart';
import '../../features/profile/logic/profile_cubit.dart';
import '../../features/sign_up/data/repos/signup_repo.dart';
import '../../features/sign_up/logic/signup_cubit.dart';
import '../helpers/token_manger.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Token manager
  getIt.registerLazySingleton<TokenManager>(() => TokenManager());

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt(), getIt()));

  //  signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // profile
  getIt.registerLazySingleton<ProfileRepo>(() => ProfileRepo(getIt()));
  getIt.registerFactory<ProfileCubit>(() => ProfileCubit(getIt()));

  // specialties
  getIt.registerLazySingleton<SpecialtiesRepo>(() => SpecialtiesRepo(getIt()));
  getIt.registerFactory<SpecialitiesCubit>(() => SpecialitiesCubit(getIt()));
}
