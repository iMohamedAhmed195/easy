import 'package:easy/core/widgets/screens/awesome_success_screen.dart';
import 'package:easy/features/auth/presentation/screens/complete_profile_data_screen.dart';
import 'package:easy/features/auth/presentation/screens/enter_otp_screen.dart';
import 'package:easy/features/auth/presentation/screens/enter_phone_screen.dart';
import 'package:easy/features/auth/presentation/screens/login_screen.dart';
import 'package:easy/features/auth/presentation/screens/register_screen.dart';
import 'package:easy/features/auth/presentation/screens/reset_password_screen.dart';
import 'package:easy/features/bottom_navigation/presentation/bottom_navigation_screen.dart';
import 'package:easy/features/on_boarding/presentation/onboarding_screen.dart';
import 'package:easy/features/select_language/presentation/select_language_screen.dart';
import 'package:easy/features/splash_screen.dart';
import '../../exports.dart';

class Routes {
  Routes._internal();
  static const String chatRoute = "Chat route";
  static const String splashScreen = "/";
  static const String selectLanguageRoute = "/selectLanguageRoute";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String enterOtpRoute = "/enterOtpRoute";
  static const String enterPhoneNumberRoute = "/enterPhoneNumberRoute";
  static const String resetPasswordRoute = "/resetPasswordRoute";
  static const String awesomeSuccessRoute = "/awesomeSuccessRoute";
  static const String completeProfileDataRoute = "/completeProfileDataRoute";
  static const String bottomNavigationRoute = "/bottomNavigationRoute";

}

class RouteGenerator {
  RouteGenerator._internal();
  AnimationType? pageRouteAnimationGlobal;
  static Duration pageRouteTransitionDurationGlobal = 400.milliseconds;
  static Route<T>? getRoute<T>(RouteSettings routeSettings) {
    debugPrint(routeSettings.name);
    switch (routeSettings.name) {
      case Routes.splashScreen:
        return buildPageRoute<T>(
            child: const SplashScreen(), routeSettings: routeSettings);
        case Routes.selectLanguageRoute:
        return buildPageRoute<T>(
            child: const SelectLanguageScreen(), routeSettings: routeSettings);
        case Routes.onBoardingRoute:
        return buildPageRoute<T>(
            child: const OnboardingScreen(), routeSettings: routeSettings);
        case Routes.loginRoute:
        return buildPageRoute<T>(
            child: const LoginScreen(), routeSettings: routeSettings);
        case Routes.registerRoute:
        return buildPageRoute<T>(
            child: const RegisterScreen(), routeSettings: routeSettings);
        case Routes.enterOtpRoute:
        return buildPageRoute<T>(
            child: EnterOtpScreen(isForgetPassword: (routeSettings.arguments as Map<String, dynamic>)['isForgetPassword'],), routeSettings: routeSettings);
        case Routes.enterPhoneNumberRoute:
        return buildPageRoute<T>(
            child: const EnterPhoneScreen(), routeSettings: routeSettings);
        case Routes.resetPasswordRoute:
        return buildPageRoute<T>(
            child: const ResetPasswordScreen(), routeSettings: routeSettings);
        case Routes.awesomeSuccessRoute:
        return buildPageRoute<T>(
            child:  AwesomeSuccessScreen(
              header: (routeSettings.arguments as Map<String, dynamic>)['header'],
              subHeader: (routeSettings.arguments as Map<String, dynamic>)['subHeader'],
              buttonText: (routeSettings.arguments as Map<String, dynamic>)['buttonText'],
              onPressed: (routeSettings.arguments as Map<String, dynamic>)['onPressed'],), routeSettings: routeSettings);
        case Routes.completeProfileDataRoute:
        return buildPageRoute<T>(
            child: const CompleteProfileDataScreen(), routeSettings: routeSettings);
        case Routes.bottomNavigationRoute:
        return buildPageRoute<T>(
            child:  BottomNavigationScreens(), routeSettings: routeSettings);
      // case Routes.subServiceDetailsRoute:
      //   return buildPageRoute<T>(
      //       child: MultiBlocProvider(
      //         providers: [
      //           BlocProvider(
      //             create: (context) => SubServicesDetailsCubit(
      //                 subServicesDetailsUseCase:
      //                     ServiceLocator().getIt<SubServicesDetailsUseCase>())
      //               ..getSubServiceDetails((routeSettings.arguments
      //                   as Map<String, dynamic>)['id']),
      //           ),
      //           BlocProvider(
      //               create: (context) => BookingServiceCubit(
      //                   bookingServiceUseCase:
      //                       ServiceLocator().getIt<BookingServiceUseCase>())),
      //         ],
      //         child: const SubServiceDetailsScreen(),
      //       ),
      //       routeSettings: routeSettings);

    }
    return buildPageRoute<T>(
        child: const Center(
          child: Text("no route found"),
        ),
        routeSettings: routeSettings);
  }

  static Route<T> buildPageRoute<T>({
    required Widget child,
    AnimationType? pageRouteAnimation = AnimationType.fade,
    Duration? duration,
    RouteSettings? routeSettings,
  })
  {
    if (pageRouteAnimation == AnimationType.rotate) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return RotationTransition(
              turns: ReverseAnimation(anim),
              child: child);
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    } else if (pageRouteAnimation == AnimationType.scale) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return ScaleTransition(scale: anim, child: child);
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    } else if (pageRouteAnimation == AnimationType.slide) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return SlideTransition(
            position: Tween(
              begin: const Offset(1.0, 0.0),
              end: const Offset(0.0, 0.0),
            ).animate(anim),
            child: child,
          );
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    } else if (pageRouteAnimation == AnimationType.slideBottomTop) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return SlideTransition(
            position: Tween(
              begin: const Offset(0.0, 1.0),
              end: const Offset(0.0, 0.0),
            ).animate(anim),
            child: child,
          );
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    }

    return PageRouteBuilder<T>(
      settings: routeSettings,
      transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      reverseTransitionDuration: const Duration(milliseconds: 50),
      pageBuilder: (context, a1, a2) => child,
      transitionsBuilder: (c, anim, a2, child) {
        return FadeTransition(opacity: anim, child: child);
      },
    );
  }
}