import '../../../../exports.dart';

class ApplyForLoanNotesSection extends StatelessWidget {
  const ApplyForLoanNotesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.notesTitle,
          style: getRegularTextStyle(
            fontSize: 12,
            color: AppColors.grayishBlueColor,
          ),
        ),
        4.vs,
        Text(
          AppStrings.note1,
          style: getRegularTextStyle(
            fontSize: 12,
            color: AppColors.grayishBlueColor,
          ),
        ),
        4.vs,
        Text(
          AppStrings.note2,
          style: getRegularTextStyle(
            fontSize: 12,
            color: AppColors.grayishBlueColor,
          ),
        ),
        4.vs,
        Text(
          AppStrings.note3,
          style: getRegularTextStyle(
            fontSize: 12,
            color: AppColors.grayishBlueColor,
          ),
        ),
      ],
    );
  }
}
