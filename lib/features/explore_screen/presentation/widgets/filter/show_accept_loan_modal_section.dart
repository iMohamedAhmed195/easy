import '../../../../../exports.dart';
import '../accept_loan/accept_loan_modal_section.dart';
import '../explore/explore_loan_model_data.dart';

void showAcceptLoanModalSection(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return AcceptLoanModalSection(loanData: loanDataList.first);
    },
  );
}
