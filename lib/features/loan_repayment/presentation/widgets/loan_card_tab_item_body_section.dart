import 'package:easy/features/loan_repayment/presentation/widgets/loan_card_cards_list_section.dart';
import 'package:easy/features/loan_repayment/presentation/widgets/payment_summary_and_total_amount_and_slider_section.dart';
import 'package:easy/features/withdraw_and_deposit/presentation/widgets/select_and_manage_card_section.dart';

import '../../../../exports.dart';

class LoanCardTabItemBodySection extends StatelessWidget {
  const LoanCardTabItemBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppConstants.kSTEPDirectionalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SelectAndManageCardSection(),
            16.vs,
            const LoanCardCardsListSection(),
            16.vs,
            const PaymentSummaryAndTotalAmountAndSliderSection()
          ],
        ),
      ),
    );
  }
}
