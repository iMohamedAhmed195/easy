import '../../exports.dart';

class LogoutAndCloseAccountBottomSheetButtons extends StatelessWidget {
  final String buttonText;
  const LogoutAndCloseAccountBottomSheetButtons(
      {super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextButton(
          textStyle: getSemiboldTextStyle(
            fontSize: 16,
            color: AppColors.white,
            fontFamily: FontFamilies.openSans,
          ),
          buttonText: buttonText,
          backgroundColor: AppColors.red,
          buttonHeight: 52,
          borderRadius: 8,
          onPressed: () {
            //! TODO: Confirm logout button logic
            //! TODO: Handle navigation after logout and call logout functionality here
          },
        ),
        16.vs,
        AppTextButton(
          textStyle: getSemiboldTextStyle(
              fontSize: 16,
              color: AppColors.primaryColor,
              fontFamily: FontFamilies.openSans),
          borderColor: AppColors.primaryColor,
          buttonText: AppStrings.cancel,
          backgroundColor: AppColors.white,
          buttonHeight: 52,
          borderSideWidth: 1,
          borderRadius: 8,
          onPressed: () {
            //! TODO: Cancel logout button logic
          },
        ),
      ],
    );
  }
}
