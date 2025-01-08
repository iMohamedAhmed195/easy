import '../../../../exports.dart';
import '../../data/models/withdraw_and_deposit_screen_args_model.dart';

class WithdrawAndDepositCurrentBalanceAndAmountSection extends StatelessWidget {
  final WithdrawAndDepositScreenArgs withdrawAndDepositScreenArgs;

  const WithdrawAndDepositCurrentBalanceAndAmountSection(
      {super.key, required this.withdrawAndDepositScreenArgs});

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
          withdrawAndDepositScreenArgs.currentBalance,
          style: getBoldTextStyle(
            fontSize: 32,
            color: AppColors.richCharcoal,
          ),
        ).alignCenterStart(),
      ],
    );
  }
}
