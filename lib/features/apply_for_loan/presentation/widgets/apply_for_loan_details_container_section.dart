import 'package:easy/features/apply_for_loan/presentation/widgets/apply_for_loan_container_dash_section.dart';
import 'package:easy/features/apply_for_loan/presentation/widgets/apply_for_loan_notes_section.dart';
import 'package:easy/features/apply_for_loan/presentation/widgets/contract_percentage_and_price_section.dart';
import 'package:easy/features/apply_for_loan/presentation/widgets/loan_amount_text_and_slider_section.dart';
import 'package:easy/features/apply_for_loan/presentation/widgets/loan_term_text_and_slider_section.dart';
import 'package:easy/features/apply_for_loan/presentation/widgets/loan_total_due_section.dart';

import '../../../../core/widgets/common_button_section.dart';
import '../../../../exports.dart';
import 'loan_details_and_amount_section.dart';

class APplyForLoanDetailsContainerSection extends StatelessWidget {
  const APplyForLoanDetailsContainerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 16.all,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.applyForLoanContainer),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const LoanDetailsAndAmountSection(),
          16.vs,
          const LoanAmountTextAndSlidersection(),
          16.vs,
          const LoanTermTextAndSliderSection(),
          16.vs,
          const ContractPercentageAndPriceSection(),
          12.vs,
          const LoanTotalDueSection(),
          27.vs,
          const ApplyForLoanContainerDashSection(),
          24.vs,
          const ApplyForLoanNotesSection(),
          16.vs,
          CommonButtonSection(
            buttonText: AppStrings.applyButtonText,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
