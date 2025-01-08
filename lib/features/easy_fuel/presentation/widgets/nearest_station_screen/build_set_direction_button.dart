import '../../../../../exports.dart';

Widget buildSetDirectionsButton() {
  return Padding(
    padding: EdgeInsets.only(top: 16.h),
    child: AppTextButton(
      borderSideWidth: 1,
      borderColor: AppColors.primaryColor,
      backgroundColor: AppColors.transparent,
      borderRadius: 8,
      buttonText: AppStrings.setDirectionsButtonText,
      textStyle: getSemiBoldTextStyle(
        color: AppColors.primaryColor,
        fontSize: 16,
        fontFamily: FontFamilies.openSans,
      ),
      onPressed: () {},
    ),
  );
}
