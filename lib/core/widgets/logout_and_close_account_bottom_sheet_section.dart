// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../exports.dart';
import 'logout_and_close_account_bottom_sheet_body_section.dart';

class LogoutAndCloseAccountBottomSheetSection extends StatelessWidget {
  final String buttonText;
  final String sheetIconPath;
  final String sheetTitle;
  final String sheetWarning;
  final double sheetHeight;
  const LogoutAndCloseAccountBottomSheetSection({
    super.key,
    required this.buttonText,
    required this.sheetIconPath,
    required this.sheetTitle,
    required this.sheetWarning,
    required this.sheetHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: sheetHeight.h,
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r),
            topRight: Radius.circular(16.r),
          ),
        ),
      ),
      child: LogoutAndCloseAccountBottomSheetBodySection(
        sheetIconPath: sheetIconPath,
        sheetTitle: sheetTitle,
        sheetWarning: sheetWarning,
        buttonText: buttonText,
      ),
    );
  }
}
