import '../../../../exports.dart';
import '../../../apply_for_loan/presentation/widgets/custom_styeled_slider_section.dart';

Widget buildExploreLoanTermSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        AppStrings.loanTermLabel,
        style: getSemiBoldTextStyle(
          fontSize: 14,
          color: AppColors.richCharcoal,
        ),
      ).alignCenterStart(),
      11.vs,
      Text(
        AppStrings.loanTermRange,
        textAlign: TextAlign.right,
        style: getSemiBoldTextStyle(
          fontSize: 14,
          color: AppColors.primaryColor,
        ),
      ).alignCenterStart(),
      8.vs,
      const CustomStyeledSliderSection(
        selectedLoanNumber: AppStrings.loanAmountLabel,
      ),
    ],
  );
}
