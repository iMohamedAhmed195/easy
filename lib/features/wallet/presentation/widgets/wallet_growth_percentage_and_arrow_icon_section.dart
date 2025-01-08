import '../../../../exports.dart';

class WalletGrowthPercentageAndArrowIconSection extends StatelessWidget {
  const WalletGrowthPercentageAndArrowIconSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgDisplayer(
          assetName: AppAssets.arrowGreenUp,
          height: 13.h,
          width: 13.w,
        ),
        2.hs,
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: AppStrings.increasePercentage,
                style: getRegularTextStyle(
                  color: AppColors.strongGreen,
                  fontSize: 11,
                ),
              ),
              TextSpan(
                text: AppStrings.loanAppliedNote,
                style: getRegularTextStyle(
                  color: AppColors.grayishBlueColor,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
