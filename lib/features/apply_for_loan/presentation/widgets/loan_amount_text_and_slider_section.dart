import 'package:easy/features/apply_for_loan/presentation/widgets/custom_styeled_slider_section.dart';

import '../../../../exports.dart';

class LoanAmountTextAndSlidersection extends StatelessWidget {
  const LoanAmountTextAndSlidersection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              AppStrings.loanAmountLabel,
              style: getRegularTextStyle(
                color: AppColors.richCharcoal,
                fontSize: 14,
              ),
            ),
            const Spacer(),
            Text(
              AppStrings.loanAmountValue,
              style: getSemiBoldTextStyle(
                color: AppColors.primaryColor,
                fontSize: 14,
              ),
            ),
          ],
        ),
        8.vs,
        const CustomStyeledSliderSection(
          selectedLoanNumber: AppStrings.loanAmountLabel,
        ),
        8.vs,
        Row(
          children: [
            Text(
              AppStrings.minLoanAmount,
              style: getRegularTextStyle(
                color: AppColors.grayishBlueColor,
                fontSize: 14,
              ),
            ),
            const Spacer(),
            Text(
              AppStrings.maxLoanAmount,
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
