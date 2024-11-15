import '../../../../core/widgets/custom_button.dart';
import '../../../../exports.dart';

class WalletWithdrawAndDepositButtonsSection extends StatelessWidget {
  const WalletWithdrawAndDepositButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 148.w,
          child: CustomButton(
            borderColor: AppColors.softCloudBlue,
            backgroundColor: AppColors.softCloudBlue,
            borderRadius: 6.r,
            height: 40.h,
            text: AppStrings.withdraw,
            style: getSemiBoldTextStyle(
              fontSize: 12,
              color: AppColors.primaryColor,
            ),
            onPressed: () {
              Routes.withdrawScreenRoute.moveTo();
            },
            svgIconPath: AppAssets.roundedArrowUp,
          ),
        ),
        SizedBox(
          width: 148.w,
          child: CustomButton(
            borderColor: AppColors.softCloudBlue,
            backgroundColor: AppColors.softCloudBlue,
            borderRadius: 6.r,
            height: 40.h,
            text: AppStrings.deposit,
            style: getSemiBoldTextStyle(
              fontSize: 12,
              color: AppColors.primaryColor,
            ),
            onPressed: () {},
            svgIconPath: AppAssets.roundedArrowDown,
          ),
        ),
      ],
    );
  }
}
