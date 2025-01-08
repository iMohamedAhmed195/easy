import '../../../../exports.dart';

class LoanTotalDueSection extends StatelessWidget {
  const LoanTotalDueSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppStrings.totalDueLabel,
          style: getRegularTextStyle(
            color: AppColors.richCharcoal,
            fontSize: 12,
          ),
        ),
        const Spacer(),
        Text(
          AppStrings.totalDueValue,
          style: getSemiBoldTextStyle(
            color: AppColors.primaryColor,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
