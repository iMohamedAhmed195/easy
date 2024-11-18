import 'package:easy/core/widgets/app_divider.dart';
import 'package:easy/features/loan_repayment/presentation/widgets/loan_current_balance_and_deposit_wallet_section.dart';
import 'package:easy/features/loan_repayment/presentation/widgets/payment_summary_and_total_amount_and_slider_section.dart';

import '../../../../core/widgets/current_balance_amount_and_eye_section.dart';
import '../../../../exports.dart';

class LoanWalletTabItemBodySection extends StatelessWidget {
  const LoanWalletTabItemBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConstants.kSTEPDirectionalPadding,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LoanCurrentBalanceAndDepositWalletSection(),
            4.vs,
            const CurrentBalanceAmountAndEyeSection(),
            16.vs,
            const AppDivider(),
            16.vs,
            const PaymentSummaryAndTotalAmountAndSliderSection(),
          ],
        ),
      ),
    );
  }
}
