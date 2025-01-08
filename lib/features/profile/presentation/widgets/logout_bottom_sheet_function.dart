import '../../../../exports.dart';
import '../../../../core/widgets/logout_and_close_account_bottom_sheet_section.dart';

Future<void> logoutAccountBottomSheet(BuildContext context) async {
  showModalBottomSheet(
    context: context,
    builder: (context) => LogoutAndCloseAccountBottomSheetSection(
      sheetIconPath: AppAssets.redExclamationMark,
      sheetTitle: AppStrings.logout,
      sheetWarning: AppStrings.logoutFromEasyWarning,
      buttonText: AppStrings.logout,
      sheetHeight: 343,
    ),
  );
}
