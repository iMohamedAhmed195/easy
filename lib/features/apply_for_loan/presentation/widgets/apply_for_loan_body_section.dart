import '../../../../core/widgets/custom_app_bar_with_back_arrow_section.dart';
import '../../../../exports.dart';
import 'apply_for_loan_details_container_section.dart';

class ApplyForLoanBodySection extends StatelessWidget {
  const ApplyForLoanBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarWithBackArrowSection(
          isPop: true,
          appBarTitle: AppStrings.applyForLoanTitle,
        ),
        25.vs,
        const APplyForLoanDetailsContainerSection(),
        88.vs,
      ],
    );
  }
}
