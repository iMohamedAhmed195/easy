import '../../../../exports.dart';

class LoanCurrentBalanceAndDepositWalletSection extends StatelessWidget {
  const LoanCurrentBalanceAndDepositWalletSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppStrings.currentBalanceText,
          textAlign: TextAlign.center,
          style: getSemiBoldTextStyle(
            fontSize: 14,
            color: AppColors.grayishBlueColor,
          ),
        ),
        const Spacer(),
        Text(
          AppStrings.depositToWalletText,
          textAlign: TextAlign.center,
          style: getRegularTextStyle(
            fontSize: 12,
            decoration: TextDecoration.underline,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
