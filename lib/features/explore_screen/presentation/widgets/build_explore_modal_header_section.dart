import '../../../../exports.dart';

Widget buildExploreModalHeaderSection() {
  return Row(
    children: [
      131.hs,
      Text(
        AppStrings.filterBy,
        textAlign: TextAlign.center,
        style: getBoldTextStyle(
          fontSize: 16,
          color: AppColors.richCharcoal,
        ),
      ),
      94.hs,
      Text(
        AppStrings.reset,
        textAlign: TextAlign.center,
        style: getRegularTextStyle(
          fontSize: 14,
          color: AppColors.primaryColor,
        ),
      ),
    ],
  );
}
