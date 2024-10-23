import '../../../../exports.dart';
import 'profile_logout_bottom_sheet_body_section.dart';

class LogoutBottomSheetSection extends StatelessWidget {
  const LogoutBottomSheetSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 343.h,
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r),
            topRight: Radius.circular(16.r),
          ),
        ),
      ),
      child: const ProfileLogoutBottomSheetBodySection(),
    );
  }
}
