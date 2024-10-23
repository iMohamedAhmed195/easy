import '../../../../exports.dart';
import 'profile_app_bar_section.dart';

class ProfileScreenAppBarSection extends StatelessWidget {
  const ProfileScreenAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileAndRelatedScreensCustomAppBarSection(
      profileCustomAppBarTextData: AppStrings.profile,
    );
  }
}
