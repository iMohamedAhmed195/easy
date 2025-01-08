import '../../../../../exports.dart';
import '../../../data/models/explore_loan_data_model.dart';
import 'build_accept_loan_modal_header.dart';
import 'build_accept_loan_term_section.dart';
import 'build_apply_loan_button.dart';
import 'build_cancel_loan_button.dart';
import '../explore/build_explore_loan_container_loan_term_section.dart';
import '../explore/build_explore_loan_container_verification_section.dart';

class AcceptLoanModalSection extends StatelessWidget {
  final LoanData loanData;

  const AcceptLoanModalSection({super.key, required this.loanData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(16.w, 8.h, 16.w, 0.h),
      width: 360.w,
      height: 356.h,
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r),
            topRight: Radius.circular(16.r),
          ),
        ),
      ),
      child: Column(
        children: [
          buildAcceptLoanModalHeader(),
          12.vs,
          Padding(
            padding: 33.ph,
            child: Text(
              AppStrings.acceptLoanConfirmation,
              textAlign: TextAlign.center,
              style: getBoldTextStyle(
                color: AppColors.richCharcoal,
                fontSize: 16,
              ),
            ),
          ),
          16.vs,
          buildAcceptLoanTermSection(loanData),
          16.vs,
          buildExploreLoanContainerLoanTermSection(loanData),
          16.vs,
          buildExploreLoanContainerVerificationSection(loanData),
          24.vs,
          buildApplyLoanButton(),
          16.vs,
          buildCancelLoanButton(),
        ],
      ),
    );
  }
}
