import '../../../../exports.dart';

class ProfileLogoutBottomSheetButtons extends StatelessWidget {
  const ProfileLogoutBottomSheetButtons({super.key});

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
          buttonText: AppStrings.logout,
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
