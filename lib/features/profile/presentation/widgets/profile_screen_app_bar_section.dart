import '../../../../exports.dart';
import '../../../../core/widgets/profile_and_related_screens_app_bar_section.dart';

class ProfileScreenAppBarSection extends StatelessWidget {
  const ProfileScreenAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileAndRelatedScreensCustomAppBarSection(
      isPop: false,
      appBarTitle: AppStrings.profile,
    );
  }
}
