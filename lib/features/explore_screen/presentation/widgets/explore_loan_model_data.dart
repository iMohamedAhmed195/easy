import 'package:easy/features/explore_screen/data/models/explore_loan_data_model.dart';

import '../../../../exports.dart';

final List<LoanData> loanDataList = [
  LoanData(
    postedTime: AppStrings.postedTime1HourAgo,
    amount: AppStrings.loanAmount2100SAR,
    loanTerm: AppStrings.loanTerm12Days,
    verificationStatus: AppStrings.paymentVerified,
  ),
  LoanData(
    postedTime: AppStrings.postedTime2HoursAgo,
    amount: AppStrings.loanAmount3000SAR,
    loanTerm: AppStrings.loanTerm15Days,
    verificationStatus: AppStrings.notVerified,
  ),
  LoanData(
    postedTime: AppStrings.postedTime3HoursAgo,
    amount: AppStrings.loanAmount1800SAR,
    loanTerm: AppStrings.loanTerm10Days,
    verificationStatus: AppStrings.paymentVerified,
  ),
];
