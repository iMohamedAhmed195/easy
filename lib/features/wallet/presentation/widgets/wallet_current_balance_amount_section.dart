import '../../../../exports.dart';

class WalletCurrentBalanceAmountSection extends StatelessWidget {
  const WalletCurrentBalanceAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppStrings.balanceAmount,
          style: getBoldTextStyle(
            color: AppColors.richCharcoal,
            fontSize: 32,
          ),
        ),
        8.hs,
        SvgDisplayer(
          assetName: AppAssets.eyeIcon,
          svgIconColor: AppColors.richCharcoal,
          height: 20.h,
          width: 20.w,
        ),
      ],
    );
  }
}
