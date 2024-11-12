import '../../../../core/widgets/profile_and_related_screens_app_bar_section.dart';
import '../../../../exports.dart';
import 'change_password_from_section.dart';

class ChangePasswordBodySection extends StatelessWidget {
  const ChangePasswordBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const ProfileAndRelatedScreensCustomAppBarSection(
              isPop: true,
              appBarTitle: AppStrings.changePassword,
            ),
            27.vs,
            const ChangePasswordFromSection(),
            32.vs,
          ],
        ),
      ],
    );
  }
}
