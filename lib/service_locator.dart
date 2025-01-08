import 'package:easy/features/on_boarding/data/data_sources/onboarding_local_data_source.dart';
import 'package:easy/features/on_boarding/data/repositories/onboarding_repo_impl.dart';
import 'package:easy/features/on_boarding/domain/repositories/onboarding_repo.dart';
import 'package:easy/features/on_boarding/domain/usecase/onborading_usecases.dart';
import 'package:easy/features/on_boarding/presentation/managers/onboarding_cubit.dart';
import 'package:get_it/get_it.dart';

import 'core/network/impl/dio_impl/dio_interceptors.dart';
import 'core/permission_handler.dart';
import 'exports.dart';


class ServiceLocator {
  GetIt getIt = GetIt.instance;

  /// Factory method that reuse same instance automatically

  static ServiceLocator instance =
      ServiceLocator._internal(); // named constructor

  /// Private constructor
  ServiceLocator._internal();
  factory ServiceLocator() => instance; // singleton
  Future<void> get init async {
    await registerPrefs;
    registerNetwork;
    registerGoogleService;
    registerPermission;
    registerOnboarding;
  }

  get registerNetwork {
    getIt.registerLazySingleton<Dio>(() => Dio());
    getIt.registerLazySingleton<DioInterceptor>(() => DioInterceptor());
    getIt.registerLazySingleton<LogInterceptor>(() => LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
        error: true));
    getIt.registerLazySingleton<DioConsumer>(() => DioConsumer(
        client: getIt(), dioInterceptor: getIt(), logInterceptor: getIt())
      ..dioInit());
    /*********************************** end of network  ****************************************/
  }

  get registerPrefs async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    getIt.registerLazySingleton<SharedPreferences>(() => preferences);
  }

  get registerGoogleService {
    /* getIt.registerLazySingleton<GoogleRemoteDataSource>(() => GoogleRemoteImplWithDio(dioConsumer: getIt()));
    getIt.registerLazySingleton<GoogleRepo>(() => GoogleRepoImpl(googleRemote: getIt()));

    getIt.registerLazySingleton<GetAddressFromCoordinatesUseCase>(() => GetAddressFromCoordinatesUseCase(googleRepo: getIt()));
    getIt.registerLazySingleton<GetDistanceAndTimeUseCase>(() => GetDistanceAndTimeUseCase(googleRepo: getIt()));
    getIt.registerLazySingleton<GetAddressFromName>(() => GetAddressFromName(googleRepo: getIt()));
    getIt.registerLazySingleton<GetAddressFromIdUseCase>(() => GetAddressFromIdUseCase(googleRepo: getIt()));
    getIt.registerLazySingleton<MyLocationCubit>(
        () => MyLocationCubit(getAddressFromCoordinatesUseCase: getIt(), getAddressFromIdUseCase: getIt()));
    getIt.registerLazySingleton<DestinationCubit>(
        () => DestinationCubit(getAddressFromCoordinatesUseCase: getIt(), getAddressFromIdUseCase: getIt()));
    getIt.registerLazySingleton<DistanceAndTimeCubit>(() => DistanceAndTimeCubit(getDistanceAndTimeUseCase: getIt()));
 */
  }

  get registerPermission =>
      getIt.registerLazySingleton(() => PermissionManager());
  get registerOnboarding {
    getIt.registerLazySingleton<OnBoardingLocalDataSource>(() =>
        OnBoardingLocalDataSourceImplWithPrefs(sharedPreferences: getIt()));
    getIt.registerLazySingleton<OnBoardingRepo>(
            () => OnBoardingRepoImpl(onBoardingLocalDataSource: getIt()));
    getIt.registerLazySingleton<OnBoardingUsesCases>(
            () => OnBoardingUsesCases(onBoardingRepo: getIt()));
    getIt.registerLazySingleton<OnboardingCubit>(
            () => OnboardingCubit(onBoardingUsesCases: getIt()));
  }


}
