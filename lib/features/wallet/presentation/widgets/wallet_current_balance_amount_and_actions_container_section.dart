import 'package:easy/features/wallet/presentation/widgets/wallet_current_balance_amount_section.dart';
import 'package:easy/features/wallet/presentation/widgets/wallet_growth_percentage_and_arrow_icon_section.dart';
import 'package:easy/features/wallet/presentation/widgets/wallet_withdraw_and_deposit_buttons_section.dart';

import '../../../../exports.dart';

class WalletCurrentBalanceAmountAndActionsContainerSection
    extends StatelessWidget {
  const WalletCurrentBalanceAmountAndActionsContainerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 12.all,
      decoration: ShapeDecoration(
        color: AppColors.backGroundGray,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.currentBalance,
            textAlign: TextAlign.center,
            style: getSemiBoldTextStyle(
              color: AppColors.grayishBlueColor,
              fontSize: 14,
            ),
          ),
          4.vs,
          const WalletCurrentBalanceAmountSection(),
          5.vs,
          const WalletGrowthPercentageAndArrowIconSection(),
          12.vs,
          const WalletWithdrawAndDepositButtonsSection(),
        ],
      ),
    );
  }
}
