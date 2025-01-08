import 'package:easy/exports.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_cubit.dart';
import 'package:easy/features/bottom_navigation/presentation/managers/bottom_nav_operation_cubit.dart';
import 'package:easy/features/on_boarding/presentation/managers/onboarding_cubit.dart';
import 'package:easy/features/select_language/presentation/manager/select_language_cubit.dart';


class BlocProviders {
  static final List<BlocProvider> providers = [
    BlocProvider<BottomNavOperationCubit>(
      create: (context) => BottomNavOperationCubit(),
    ),
    BlocProvider<SelectLanguageCubit>(
        create: (context) => SelectLanguageCubit()),
    BlocProvider<OnboardingCubit>(
      create: (context) => ServiceLocator().getIt<OnboardingCubit>(),),
    BlocProvider<UiAuthCubit>(
      create: (context) => UiAuthCubit(),),
    // BlocProvider<OnboardingManagerCubit>(
    //     create: (context) => ServiceLocator().getIt<OnboardingManagerCubit>()),
    // BlocProvider<UserCubit>(
    //     create: (context) => ServiceLocator().getIt<UserCubit>()),


  ];
}
