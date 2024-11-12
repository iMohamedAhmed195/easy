import 'package:easy/core/widgets/profile_and_related_screens_app_bar_section.dart';

import '../../../../core/widgets/save_changes_button.dart';
import '../../../../exports.dart';
import 'notifications_settings_list_section.dart';
import 'notifications_settings_texts_section.dart';

class NotificationsSettingsBodySection extends StatelessWidget {
  const NotificationsSettingsBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileAndRelatedScreensCustomAppBarSection(
          isPop: true,
          appBarTitle: AppStrings.pushNotifications,
        ),
        27.vs,
        const NotificationsSettingsTextsSection(),
        16.vs,
        const NotificationsSettingsListSection(),
        299.vs,
        const SaveChangesButton(),
        32.vs,
      ],
    );
  }
}
