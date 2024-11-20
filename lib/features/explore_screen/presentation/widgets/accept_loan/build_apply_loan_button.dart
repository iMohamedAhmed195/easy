import '../../../../../core/widgets/common_button_section.dart';
import '../../../../../exports.dart';

Widget buildApplyLoanButton() {
  return CommonButtonSection(
    buttonText: AppStrings.applyFilters,
    onPressed: () {
      Routes.loanRepaymentScreenRoute.moveTo();
    },
  );
}
