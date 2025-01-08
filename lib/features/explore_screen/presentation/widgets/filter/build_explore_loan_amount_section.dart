import '../../../../../exports.dart';
import '../../../../apply_for_loan/presentation/widgets/custom_styeled_slider_section.dart';

Widget buildExploreLoanAmountSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        AppStrings.loanAmountLabel,
        style: getSemiBoldTextStyle(
          color: AppColors.richCharcoal,
          fontSize: 14,
        ),
      ).alignCenterStart(),
      11.vs,
      Text(
        AppStrings.loanAmountRange,
        textAlign: TextAlign.right,
        style: getSemiBoldTextStyle(
          color: AppColors.primaryColor,
          fontSize: 14,
        ),
      ).alignCenterStart(),
      8.vs,
      const CustomStyeledSliderSection(
        selectedLoanNumber: AppStrings.loanAmountLabel,
      ),
    ],
  );
}
