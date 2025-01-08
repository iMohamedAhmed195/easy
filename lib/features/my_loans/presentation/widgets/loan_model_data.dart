import '../../../../exports.dart';
import '../../data/models/loan_model.dart';

List<LoanModel> myLoansData = [
  LoanModel(
    loanDueDate: AppStrings.loanDueDate1,
    loanBalance: AppStrings.loanBalance1,
    loanId: AppStrings.loanId1,
    loanStartingDate: AppStrings.loanStartingDate1,
    loanStatus: AppStrings.loanStatus1,
    loanDaysRemaining: AppStrings.loanDaysRemaining1,
    loanStatusColor: AppColors.strongGreen,
    loanDaysRemainingColor: AppColors.red,
    buttonText: AppStrings.repayLoanButton,
  ),
  LoanModel(
    loanDueDate: AppStrings.loanDueDate2,
    loanBalance: AppStrings.loanBalance2,
    loanId: AppStrings.loanId2,
    loanStartingDate: AppStrings.loanStartingDate2,
    loanStatus: AppStrings.loanStatus2,
    loanDaysRemaining: AppStrings.loanDaysRemaining2,
    loanStatusColor: AppColors.strongGreen,
    loanDaysRemainingColor: AppColors.orangePeachColor,
    buttonText: AppStrings.repayLoanButton,
  ),
];
