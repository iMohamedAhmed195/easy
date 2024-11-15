import '../../../../core/widgets/custom_button.dart';
import '../../../../exports.dart';
import '../../../withdraw_and_deposit/data/models/withdraw_and_deposit_screen_args_model.dart';
import '../../../withdraw_and_deposit/presentation/widgets/bank_card_details_model_data.dart';

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
              Navigator.pushNamed(
                context,
                Routes.withdrawAndDepositScreenRoute,
                arguments: WithdrawAndDepositScreenArgs(
                  screenFeatureName: AppStrings.withdraw,
                  currentBalance: AppStrings.amountDisplay,
                  amountToSet: AppStrings.withdrawAmountText,
                  moneyCanBeTaken: AppStrings.smallWithdrawAmountText,
                  sliderTitle: AppStrings.setAmountText,
                  successMessage: AppStrings.withdrawSuccess,
                  bankCardDetails: bankCardDetails,
                ),
              );
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
            onPressed: () {
              Navigator.pushNamed(
                context,
                Routes.withdrawAndDepositScreenRoute,
                arguments: WithdrawAndDepositScreenArgs(
                  screenFeatureName: AppStrings.deposit,
                  currentBalance: AppStrings.amountDisplay,
                  amountToSet: AppStrings.withdrawAmountText,
                  moneyCanBeTaken: AppStrings.smallWithdrawAmountText,
                  sliderTitle: AppStrings.setAmountText,
                  successMessage: AppStrings.depositSuccess,
                  bankCardDetails: bankCardDetails,
                ),
              );
            },
            svgIconPath: AppAssets.roundedArrowDown,
          ),
        ),
      ],
    );
  }
}
