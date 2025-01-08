import '../../../../../exports.dart';
import '../../../../../core/widgets/logout_and_close_account_bottom_sheet_section.dart';

Future<void> closeAccountBottomSheet(BuildContext context) async {
  showModalBottomSheet(
    context: context,
    builder: (context) => LogoutAndCloseAccountBottomSheetSection(
      sheetIconPath: AppAssets.closeAccount,
      sheetTitle: AppStrings.closeYourAccount,
      sheetWarning: AppStrings.closeAccountMessage,
      buttonText: AppStrings.closeAccount,
      sheetHeight: 390,
    ),
  );
}
