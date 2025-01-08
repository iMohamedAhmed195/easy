import '../../../exports.dart';

class Transaction {
  final String transactionType;
  final String statusMessage;
  final double moneyAmount;
  final Color moneyColor;
  final bool isMoneyRaising;
  final String iconPath;
  final String date;
  final String arrowIconPath;

  Transaction( {
    required this.arrowIconPath,
    required this.transactionType,
    required this.statusMessage,
    required this.moneyAmount,
    required this.moneyColor,
    required this.isMoneyRaising,
    required this.iconPath,
    required this.date,
  });
}
