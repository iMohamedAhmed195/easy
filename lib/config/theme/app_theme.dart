


import '../../exports.dart';

ThemeData appTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: null,
      iconTheme: IconThemeData(color: AppColors.primaryColor),
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
    textTheme: getTextTheme(),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsetsDirectional.symmetric(horizontal: 16.w, vertical: 0),
      hintStyle: getMediumTextStyle(
        color: AppColors.hintColor,
        fontSize: 14.sp,
        height: 26.24.sp / 14.sp,
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: AppColors.borderColor, width: 1),
      ),
    ),
  );
}

TextTheme? getTextTheme() {
  final textTheme = TextTheme(
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: AppColors.deepGray,
      fontFamily: FontFamilies.openSans,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: AppColors.deepGray,
      fontFamily: FontFamilies.openSans,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: AppColors.deepGray,
      fontFamily: FontFamilies.openSans,
    ),
    bodyLarge: TextStyle(
      fontSize: 22,
      color: AppColors.deepGray,
      fontFamily: FontFamilies.openSans,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: AppColors.deepGray,
      fontFamily: FontFamilies.openSans,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      color: AppColors.deepGray,
      fontFamily: FontFamilies.openSans,
    ),
  );
  return textTheme;
}
