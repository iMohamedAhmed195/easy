import 'package:easy/features/apply_for_loan/presentation/widgets/custom_styeled_slider_section.dart';

import '../../../../exports.dart';

class LoanTermTextAndSliderSection extends StatelessWidget {
  const LoanTermTextAndSliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              AppStrings.loanTermLabel,
              style: getRegularTextStyle(
                color: AppColors.richCharcoal,
                fontSize: 14,
              ),
            ),
            const Spacer(),
            Text(
              AppStrings.loanTermValue,
              style: getSemiBoldTextStyle(
                color: AppColors.primaryColor,
                fontSize: 14,
              ),
            ),
          ],
        ),
        8.vs,
        const CustomStyeledSliderSection(
          selectedLoanNumber: AppStrings.loanTermLabel,
        ),
        8.vs,
        Row(
          children: [
            Text(
              AppStrings.minLoanTerm,
              style: getRegularTextStyle(
                color: AppColors.grayishBlueColor,
                fontSize: 14,
              ),
            ),
            const Spacer(),
            Text(
              AppStrings.maxLoanTerm,
              style: getRegularTextStyle(
                color: AppColors.grayishBlueColor,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
