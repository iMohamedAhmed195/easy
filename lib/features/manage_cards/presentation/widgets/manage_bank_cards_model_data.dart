import 'package:easy/exports.dart';
import 'package:easy/features/manage_cards/model/manage_bank_cards_details.dart';

List<ManageBankCardDetailsModel> manageBankCardDetails = [
  ManageBankCardDetailsModel(
    bankName: AppStrings.bankName1,
    bankNumber: AppStrings.bankNumber1,
    isDefaultCard: true,
  ),
  ManageBankCardDetailsModel(
    bankName: AppStrings.bankName2,
    bankNumber: AppStrings.bankNumber2,
    isDefaultCard: false,
  ),
  ManageBankCardDetailsModel(
    bankName: AppStrings.bankName3,
    bankNumber: AppStrings.bankNumber3,
    isDefaultCard: false,
  ),
];
