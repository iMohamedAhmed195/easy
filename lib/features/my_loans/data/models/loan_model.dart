// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../../exports.dart';

class LoanModel {
  final String loanBalance;
  final String loanId;
  final String loanStartingDate;
  final String loanStatus;
  final String loanDueDate;
  final String loanDaysRemaining;
  final Color loanStatusColor;
  final Color loanDaysRemainingColor;
  final String buttonText;

  LoanModel({
    required this.loanBalance,
    required this.loanId,
    required this.loanStartingDate,
    required this.loanStatus,
    required this.loanDueDate,
    required this.loanDaysRemaining,
    required this.loanStatusColor,
    required this.loanDaysRemainingColor,
    required this.buttonText,
  });
}
