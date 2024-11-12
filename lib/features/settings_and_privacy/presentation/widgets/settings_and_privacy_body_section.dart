import 'package:easy/core/widgets/common_button_section.dart';

import '../../../../core/widgets/profile_and_related_screens_app_bar_section.dart';
import '../../../../exports.dart';
import 'preferences/preferences_section.dart';
import 'privacy/privacy_section.dart';

class SettingsAndPrivacyBodySection extends StatelessWidget {
  const SettingsAndPrivacyBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const ProfileAndRelatedScreensCustomAppBarSection(
              isPop: true,
              appBarTitle: AppStrings.settingsAndPrivacy,
            ),
            27.vs,
            const PreferencesSection(),
            8.vs,
            const PrivacySection(),
            123.vs,
            CommonButtonSection(
              buttonText: AppStrings.saveChangesButtonText,
              onPressed: () {},
            ),
            32.vs,
          ],
        ),
      ],
    );
  }
}
