import '../../../../exports.dart';
import '../../data/models/explore_loan_data_model.dart';

Widget buildExploreLoanContainerLoanTerm(LoanData data) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          SvgDisplayer(
            assetName: AppAssets.loanTerm,
            height: 16.h,
            width: 16.w,
          ),
          4.hs,
          Text(
            AppStrings.loanTermLabel,
            style: getRegularTextStyle(
              color: AppColors.richCharcoal,
              fontSize: 12,
            ),
          ),
        ],
      ),
      Text(
        data.loanTerm,
        textAlign: TextAlign.right,
        style: getSemiBoldTextStyle(
          color: AppColors.primaryColor,
          fontSize: 12,
        ),
      ),
    ],
  );
}
