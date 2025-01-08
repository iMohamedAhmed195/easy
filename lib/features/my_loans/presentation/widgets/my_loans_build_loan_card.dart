import '../../../../core/widgets/common_button_section.dart';
import '../../../../exports.dart';
import 'my_loans_build_loan_details_row.dart';

Widget buildLoanCard(loan) {
  return Container(
    margin: EdgeInsets.only(bottom: 16.h),
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
        Row(
          children: [
            SvgDisplayer(
              assetName: AppAssets.moneyChange,
              width: 40.w,
              height: 40.h,
            ),
            8.hs,
            Text(
              loan.loanBalance,
              style: getSemiBoldTextStyle(
                fontSize: 24,
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
        16.vs,
        buildLoanDetailRow(AppStrings.loanId, loan.loanId),
        16.vs,
        buildLoanDetailRow(AppStrings.startingDate, loan.loanStartingDate),
        16.vs,
        buildLoanDetailRow(AppStrings.dueDate, loan.loanDueDate),
        16.vs,
        buildLoanDetailRow(AppStrings.loanStatus, loan.loanStatus,
            color: loan.loanStatusColor),
        16.vs,
        buildLoanDetailRow(
          AppStrings.daysRemaining,
          loan.loanDaysRemaining,
          color: loan.loanDaysRemainingColor,
        ),
        12.vs,
        CommonButtonSection(
          buttonText: loan.buttonText,
          onPressed: () {
            Routes.loanRepaymentScreenRoute.moveTo();
          },
        ),
        10.5.vs,
      ],
    ),
  );
}
