import 'package:easy/core/widgets/common_button_section.dart';

import '../../../../exports.dart';

class ApplyForLoanButtonSection extends StatelessWidget {
  const ApplyForLoanButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonButtonSection(
      buttonText: AppStrings.applyButtonText,
      onPressed: () {
        Routes.awesomeSuccessRoute.moveToWithArgs({
          "header": AppStrings.congratulations,
          "subHeader": AppStrings.loanApplicationSuccess,
          "buttonText": AppStrings.goToHomepage,
          "onPressed": () {
            Routes.bottomNavigationRoute.moveTo();
          }
        });
      },
    );
  }
}
