import '../../../../exports.dart';
import 'profile_logout_bottom_sheet_buttons_section.dart';
import 'profile_logout_bottom_sheet_dialog_and_texts_section.dart';

class ProfileLogoutBottomSheetBodySection extends StatelessWidget {
  const ProfileLogoutBottomSheetBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 324.h,
      child: Padding(
        padding: 16.ph,
        child: Column(
          children: [
            8.vs,
            const ProfileLogoutBottomSheetDialogAndTextsSection(),
            24.vs,
            const ProfileLogoutBottomSheetButtons(),
          ],
        ),
      ),
    );
  }
}
