import '../../exports.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.borderRadius,
      required this.onPressed,
      this.textColor,
      this.borderColor,
      this.backgroundColor,
      this.svgIconPath,
      this.height,
      this.style});
  final String text;
  final double? borderRadius;
  final String? svgIconPath;
  final VoidCallback onPressed;
  final Color? textColor;
  final Color? borderColor;
  final Color? backgroundColor;
  final double? height;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: height ?? 55.h,
        color: backgroundColor ?? AppColors.primaryColor,
        elevation: 0,
        highlightElevation: 0,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
            side: BorderSide(color: borderColor ?? AppColors.primaryColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            svgIconPath != null
                ? SvgPicture.asset(
                    svgIconPath!,
                    width: 20.w,
                    height: 20.w,
                    color: AppColors.white,
                  )
                : const SizedBox(
                    width: 0,
                  ),
            svgIconPath != null
                ? SizedBox(
                    width: 14.w,
                  )
                : const SizedBox(
                    width: 0,
                  ),
            Text(
              text,
              style: style ??
                  getSemiboldTextStyle(
                      fontSize: 16, color: textColor ?? AppColors.white),
            ),
          ],
        ));
  }
}
