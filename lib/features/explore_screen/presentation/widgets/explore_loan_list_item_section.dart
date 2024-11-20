import '../../../../exports.dart';
import '../../data/models/explore_loan_data_model.dart';
import 'build_explore_loan_container_action_buttons.dart';
import 'build_explore_loan_container_amount_section.dart';
import 'build_explore_loan_container_header_section.dart';
import 'build_explore_loan_container_loan_term_section.dart';
import 'build_explore_loan_container_verification_section.dart';

class ExploreLoanListItemSection extends StatelessWidget {
  final LoanData data;

  const ExploreLoanListItemSection({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tight(Size(328.w, 200.h)),
      padding: EdgeInsetsDirectional.fromSTEB(12.w, 12.h, 12.w, 0.h),
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: ShapeDecoration(
        color: AppColors.backGroundGray,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          buildExploreLoanContainerHeader(data),
          8.vs,
          buildExploreLoanContainerAmount(data),
          12.vs,
          buildExploreLoanContainerLoanTerm(data),
          12.vs,
          buildExploreLoanContainerVerification(data),
          16.vs,
          buildExploreLoanContainerActionButtons(),
        ],
      ),
    );
  }
}
