import 'package:easy/features/withdraw_and_deposit/data/models/bank_cards_details.dart';

class WithdrawAndDepositScreenArgs {
  final String screenFeatureName;
  final String currentBalance;
  final String amountToSet;
  final String moneyCanBeTaken;
  final String sliderTitle;
  final String successMessage;
  final List<BankCardDetails> bankCardDetails;

  WithdrawAndDepositScreenArgs({
    required this.screenFeatureName,
    required this.currentBalance,
    required this.amountToSet,
    required this.moneyCanBeTaken,
    required this.sliderTitle,
    required this.successMessage,
    required this.bankCardDetails,
  });
}
