import '../../../../exports.dart';
import 'profile_screen_app_bar_section.dart';
import 'profile_screen_list_tiles_section.dart';
import 'profile_screen_user_image_name_title_section.dart';

class ProfileScreenBodySection extends StatelessWidget {
  const ProfileScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileScreenAppBarSection(),
        33.vs,
        const ProfileScreenUserImageNameTitleSection(),
        18.vs,
        const ProfileScreenListTiles(),
      ],
    );
  }
}
