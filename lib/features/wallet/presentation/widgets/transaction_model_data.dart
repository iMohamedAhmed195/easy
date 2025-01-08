import '../../../../exports.dart';
import '../../data/transaction_model.dart';

List<Transaction> transactions = [
  Transaction(
    arrowIconPath: AppAssets.arrowGreenUp,
    transactionType: AppStrings.preferences,
    statusMessage: AppStrings.successful,
    moneyAmount: 1500.0,
    moneyColor: AppColors.strongGreen,
    isMoneyRaising: true,
    iconPath: AppAssets.moneyChange,
    date: AppStrings.dateFirstTransaction,
  ),
  Transaction(
    arrowIconPath: AppAssets.redArrowDown,
    transactionType: AppStrings.withdraw,
    statusMessage: AppStrings.successful,
    moneyAmount: 200.0,
    moneyColor: AppColors.red,
    isMoneyRaising: false,
    iconPath: AppAssets.emptyWalletAdd,
    date: AppStrings.dateSecondTransaction,
  ),
];
