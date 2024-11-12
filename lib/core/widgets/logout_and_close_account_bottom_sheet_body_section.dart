import '../../exports.dart';
import 'logout_and_close_account_bottom_sheet_buttons_section.dart';
import 'logout_and_close_account_bottom_sheet_dialog_and_texts_section.dart';

class LogoutAndCloseAccountBottomSheetBodySection extends StatelessWidget {
  final String buttonText;
  final String sheetIconPath;
  final String sheetTitle;
  final String sheetWarning;

  const LogoutAndCloseAccountBottomSheetBodySection(
      {super.key,
      required this.buttonText,
      required this.sheetIconPath,
      required this.sheetTitle,
      required this.sheetWarning});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.infinity.w,
      // height: 324.h,
      child: Padding(
        padding: 16.ph,
        child: SingleChildScrollView(
          child: Column(
            children: [
              12.vs,
              LogoutAndCloseAccountBottomSheetDialogAndTextsSection(
                sheetIconPath: sheetIconPath,
                sheetTitle: sheetTitle,
                sheetWarning: sheetWarning,
              ),
              24.vs,
              LogoutAndCloseAccountBottomSheetButtons(
                buttonText: buttonText,
              ),
              32.vs,
            ],
          ),
        ),
      ),
    );
  }
}
