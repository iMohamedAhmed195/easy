import '../../../../exports.dart';

class LoanDetailsAndAmountSection extends StatelessWidget {
  const LoanDetailsAndAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            AppStrings.loanDetailsTitle,
            style: getSemiBoldTextStyle(
              fontSize: 12,
              color: AppColors.richCharcoal,
            ),
          ),
        ),
        12.vs,
        Center(
          child: Text(
            AppStrings.loanAmountValue,
            style: getBoldTextStyle(
              fontSize: 32,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
