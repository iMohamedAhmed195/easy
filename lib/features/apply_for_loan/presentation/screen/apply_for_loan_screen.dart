

import '../../../../exports.dart';
import '../widgets/apply_for_loan_body_section.dart';

class ApplyForLoanScreen extends StatelessWidget {
  const ApplyForLoanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppConstants.kSTEPDirectionalPadding,
            child: const ApplyForLoanBodySection(),
          ),
        ),
      ),
    );
  }
}
