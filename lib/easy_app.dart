import 'exports.dart';

class EasyApp extends StatelessWidget {
  const EasyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: BlocProviders.providers,
      child: _buildApp(context),
    );
  }

  _buildApp(BuildContext context) {
    ScreenUtil.init(context);
    ScreenUtil().statusBarHeight;
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: AppStrings().appName.trans,
        navigatorKey: navigatorKey,
        onGenerateRoute: RouteGenerator.getRoute,
        theme: appTheme(),
        color: AppColors.primaryColor,
        debugShowCheckedModeBanner: false,
        locale: context.locale,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        localeResolutionCallback: (deviceLocale, supportedLocales) {
          for (var locale in supportedLocales) {
            if (locale.languageCode == deviceLocale!.languageCode &&
                locale.countryCode == deviceLocale.countryCode) {
              return deviceLocale;
            }
          }
          return supportedLocales.last;
        },
      ),
    );
  }
}