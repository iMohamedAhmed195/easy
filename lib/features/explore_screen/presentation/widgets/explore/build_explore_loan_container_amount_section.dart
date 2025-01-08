import '../../../../../exports.dart';
import '../../../data/models/explore_loan_data_model.dart';

Widget buildExploreLoanContainerAmount(LoanData data) {
  return Text(
    data.amount,
    style: getSemiBoldTextStyle(
      color: AppColors.primaryColor,
      fontSize: 20,
    ),
  );
}
