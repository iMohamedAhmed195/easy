import '../../../../exports.dart';

class AccountInformationTabsFormSection extends StatelessWidget {
  final String title;
  final String hintText;
  final double? height;
  final EdgeInsets? contentPadding;
  final num? borderRadius;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final TextStyle? titleTextStyle;

  const AccountInformationTabsFormSection({
    super.key,
    required this.title,
    required this.hintText,
    this.height,
    this.contentPadding,
    this.borderRadius,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.titleTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleTextStyle ??
              getRegularTextStyle(
                color: AppColors.black,
                fontSize: 12,
                fontFamily: FontFamilies.openSans,
              ),
        ),
        4.vs,
        AppTextFormField(
          contentPadding: contentPadding ?? 16.ph + 12.pv,
          radius: borderRadius?.r ?? 4.r,
          enabledBorderSideColor: enabledBorderColor ?? AppColors.mediumGray,
          focusdBorderColor: focusedBorderColor ?? AppColors.mediumGray,
          height: height?.h ?? 46.h,
          hintText: hintText,
          enabledBorderSideWidth: 1.4.w,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius?.r ?? 4.r),
            borderSide: BorderSide(
              color: focusedBorderColor ?? AppColors.mediumGray,
              width: 1.4.w,
            ),
          ),
        ),
      ],
    );
  }
}
