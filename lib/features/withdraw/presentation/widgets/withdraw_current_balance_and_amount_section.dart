import '../../../../exports.dart';

class WithdrawCurrentBalanceAndAmountSection extends StatelessWidget {
  const WithdrawCurrentBalanceAndAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.currentBalance,
          style: getSemiBoldTextStyle(
            color: AppColors.grayishBlueColor,
            fontSize: 14,
          ),
        ).alignCenterStart(),
        4.vs,
        Text(
          AppStrings.balanceAmount,
          style: getBoldTextStyle(
            fontSize: 32,
            color: AppColors.richCharcoal,
          ),
        ).alignCenterStart(),
      ],
    );
  }
}
