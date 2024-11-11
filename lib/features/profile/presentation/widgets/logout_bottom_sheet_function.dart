import '../../../../exports.dart';
import 'profile_logout_bottom_sheet_section.dart';

Future<void> logoutBottomSheet(BuildContext context) async {
  showModalBottomSheet(
    context: context,
    builder: (context) => const LogoutBottomSheetSection(),
  );
}
