
import 'package:easy/features/on_boarding/presentation/managers/onboarding_cubit.dart';
import 'package:easy/features/select_language/presentation/manager/select_language_cubit.dart';

import '../exports.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Counter to track timer ticks
  int counter = 0;

  // Stores the route name for navigation after the splash screen
  String? route;

  Timer? timer;

  nextScreen() {
    timer = Timer.periodic(1.seconds, (timer) {
      counter++;
      if (route.isNotNull && counter >= 5) {
        route!.moveToAndRemoveCurrent(); // Navigate and remove splash screen
        timer.cancel();
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      route = Routes.selectLanguageRoute;
      bool isEnglish =  AppService().getBlocData<SelectLanguageCubit>().isEnglish;
      bool isNew = await AppService().getBlocData<OnboardingCubit>().isNewInstalled();
      // UserModel? user = await AppService().getBlocData<UserCubit>().getUser();
      // String token = await AppService().getBlocData<UserCubit>().getToken();
      // String deviceToken =
      // await AppService().getBlocData<UserCubit>().getDeviceToken();
      //bool isNotificationInit = (await NotificationsService().initialize()).orFalse;
      //   print("is notification granted$isNotificationInit");

      print("new install ${isNew}");
      // print("token is $token");
      // print("device token is $deviceToken");
      // print("token from prefs is ${AppPrefs.token}");
      // print("device token from prefs is ${AppPrefs.deviceToken}");
      /*  if (isLanguageSaved.isFalse) {
        route = Routes.selectLanguageRoute;
      } else*/
      if (isNew.isTrue) {
        route = Routes.selectLanguageRoute;
        // AppService()
        //     .showToast(message: "tokens error", alertType: AlertTypes.error);
      }
      // else if (user.isNotNull) {
      //   if (token.isEmpty && deviceToken.isEmpty) {
      //     route = Routes.loginRoute;
      //     AppService()
      //         .showToast(message: "tokens error", alertType: AlertTypes.error);
      //   } else {
      //     route = Routes.bottomNavigationRoute;
      //   }
      // } else {
      //   route = Routes.loginRoute;
      // }
    });
  }

  @override
  void initState() {
    nextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: double.infinity,
              child: Image.asset(AppAssets().backgroundScreen, fit: BoxFit.fill)
          ),
          SizedBox(
            width: 99.w,
              height: 31.h,
              child: Image.asset(AppAssets().logoWhite, fit: BoxFit.fill)
          ),
        ],
      ),
    );
  }
}
