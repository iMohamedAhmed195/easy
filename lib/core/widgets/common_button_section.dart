import '../../exports.dart';

class CommonButtonSection extends StatelessWidget {
  final String buttonText;
  final void Function() onPressed;
  const CommonButtonSection(
      {super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      // verticalPadding: 0.pv,
      buttonHeight: 48,
      borderRadius: 8,
      backgroundColor: AppColors.primaryColor,
      buttonText: buttonText,
      textStyle: getSemiboldTextStyle(
        color: AppColors.white,
        fontSize: 16,
        fontFamily: FontFamilies.openSans,
      ),
      onPressed: onPressed,
    );
  }
}
