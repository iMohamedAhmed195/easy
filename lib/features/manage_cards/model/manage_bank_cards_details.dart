class ManageBankCardDetailsModel {
  final String bankName;
  final String bankNumber;
  final bool isDefaultCard;

  ManageBankCardDetailsModel(
      {required this.bankName,
      required this.bankNumber,
      required this.isDefaultCard});
}
