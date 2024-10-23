import '../../../../exports.dart';

class ProfileLogoutBottomSheetDialogAndTextsSection extends StatelessWidget {
  const ProfileLogoutBottomSheetDialogAndTextsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 4.h,
          width: 72.w,
          decoration: BoxDecoration(
            color: AppColors.lightSilver,
            borderRadius: BorderRadius.circular(78.r),
          ),
        ),
        12.vs,
        SvgDisplayer(
          assetName: SvgImages.redExclamationMark,
          height: 63.h,
          width: 63.w,
        ),
        16.vs,
        Text(
          AppStrings.logoutFromEasy,
          style: getBoldTextStyle(
            fontSize: 16,
            color: AppColors.black,
            fontFamily: FontFamilies.openSans,
          ),
        ),
        12.vs,
        Padding(
          padding: 22.ph,
          child: Text(
            AppStrings.logoutFromEasyWarning,
            textAlign: TextAlign.center,
            style: getRegularTextStyle(
              color: AppColors.gray,
              fontFamily: FontFamilies.openSans,
            ),
          ),
        ),
      ],
    );
  }
}
