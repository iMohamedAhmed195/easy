import '../../../../exports.dart';

Widget buildSearchFieldSection(BuildContext context) {
  return Positioned(
    top: 53.h,
    right: 16.w,
    child: SizedBox(
      width: 272.w,
      height: 48.h,
      child: AppTextFormField(
        suffixIcon: SvgDisplayer(
          assetName: AppAssets.searchIcon,
          fit: BoxFit.scaleDown,
        ),
        keyboardType: TextInputType.streetAddress,
        hintStyle: getRegularTextStyle(
          color: AppColors.grayishBlueColor,
          fontSize: 14,
        ),
        hintText: AppStrings.searchHintText,
        contentPadding:
            EdgeInsets.symmetric(vertical: 12.w, horizontal: 14.5.h),
        radius: 10,
        fillColor: AppColors.white,
        enabledBorderSideColor: AppColors.white,
        focusdBorderColor: AppColors.white,
        enabledBorderSideWidth: 1.4.w,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: AppColors.white,
            width: 1.4.w,
          ),
        ),
      ),
    ),
  );
}
