import 'package:easy/features/apply_for_loan/presentation/screen/apply_for_loan_screen.dart';
import 'package:easy/features/language_selection/presentation/screen/language_selection_screen.dart';

import '../../exports.dart';
import '../../features/change_pin/presentation/screen/change_pin_screen.dart';
import '../../features/notification/presentation/screens/customer_notifications_screen.dart';
import 'routes_exports.dart';

class Routes {
  Routes._(); //! Private constructor to prevent instantiation
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
  static const String accountInformationScreenRoute =
      "/accountInformationScreenRoute";
  static const String faqsRoute = "/faqsRoute";
  static const String chatSupportRoute = "/chatSupportRoute";
  static const String settingsAndPrivacyScreenRoute =
      "/settingsAndPrivacyScreenRoute";
  static const String notificationsSettingsScreenRoute =
      "/notificationsSettingsScreenRoute";
  static const String changePasswordScreenRoute = "/changePasswordScreenRoute";
  static const String changePinScreenRoute = "/changePinScreenRoute";
  static const String languageSelectionScreenRoute =
      "/languageSelectionScreenRoute";
  static const String customerNotificationsScreenRoute =
      "/customerNotificationsScreenRoute";
  static const String applyForLoanScreenRoute = "/applyForLoanScreenRoute";
}

class RouteGenerator {
  RouteGenerator._(); //! Private constructor to prevent instantiation
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
            child: EnterOtpScreen(
              isForgetPassword: (routeSettings.arguments
                  as Map<String, dynamic>)['isForgetPassword'],
            ),
            routeSettings: routeSettings);
      case Routes.enterPhoneNumberRoute:
        return buildPageRoute<T>(
            child: const EnterPhoneScreen(), routeSettings: routeSettings);
      case Routes.resetPasswordRoute:
        return buildPageRoute<T>(
            child: const ResetPasswordScreen(), routeSettings: routeSettings);
      case Routes.awesomeSuccessRoute:
        return buildPageRoute<T>(
            child: AwesomeSuccessScreen(
              header:
                  (routeSettings.arguments as Map<String, dynamic>)['header'],
              subHeader: (routeSettings.arguments
                  as Map<String, dynamic>)['subHeader'],
              buttonText: (routeSettings.arguments
                  as Map<String, dynamic>)['buttonText'],
              onPressed: (routeSettings.arguments
                  as Map<String, dynamic>)['onPressed'],
            ),
            routeSettings: routeSettings);
      case Routes.completeProfileDataRoute:
        return buildPageRoute<T>(
            child: const CompleteProfileDataScreen(),
            routeSettings: routeSettings);
      case Routes.bottomNavigationRoute:
        return buildPageRoute<T>(
            child: BottomNavigationScreens(), routeSettings: routeSettings);
      case Routes.accountInformationScreenRoute:
        return buildPageRoute<T>(
            child: const AccountInformationScreen(),
            routeSettings: routeSettings);
      case Routes.faqsRoute:
        return buildPageRoute<T>(
            child: const FAQScreen(), routeSettings: routeSettings);
      case Routes.chatSupportRoute:
        return buildPageRoute<T>(
            child: const ChatSupportScreen(), routeSettings: routeSettings);
      case Routes.settingsAndPrivacyScreenRoute:
        return buildPageRoute<T>(
            child: const SettingsAndPrivacyScreen(),
            routeSettings: routeSettings);
      case Routes.notificationsSettingsScreenRoute:
        return buildPageRoute<T>(
            child: const NotificationsSettingsScreen(),
            routeSettings: routeSettings);
      case Routes.changePasswordScreenRoute:
        return buildPageRoute<T>(
            child: const ChangePasswordScreen(), routeSettings: routeSettings);
      case Routes.changePinScreenRoute:
        return buildPageRoute<T>(
            child: const ChangePinScreen(), routeSettings: routeSettings);
      case Routes.languageSelectionScreenRoute:
        return buildPageRoute<T>(
            child: const LanguageSelectionScreen(),
            routeSettings: routeSettings);
      case Routes.customerNotificationsScreenRoute:
        return buildPageRoute<T>(
            child: const CustomerNotificationsScreen(),
            routeSettings: routeSettings);
      case Routes.applyForLoanScreenRoute:
        return buildPageRoute<T>(
            child: const ApplyForLoanScreen(), routeSettings: routeSettings);
    }
    return buildPageRoute<T>(
        child: const Scaffold(
          body: Center(
            child: Text("No Route Found !"),
          ),
        ),
        routeSettings: routeSettings);
  }

  static Route<T> buildPageRoute<T>({
    required Widget child,
    AnimationType? pageRouteAnimation = AnimationType.fade,
    Duration? duration,
    RouteSettings? routeSettings,
  }) {
    if (pageRouteAnimation == AnimationType.rotate) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return RotationTransition(
              turns: ReverseAnimation(anim), child: child);
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
