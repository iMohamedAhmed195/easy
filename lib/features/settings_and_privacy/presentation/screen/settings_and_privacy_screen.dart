import 'package:easy/core/widgets/profile_and_related_screens_app_bar_section.dart';

import '../../../../exports.dart';
import '../widgets/settings_and_privacy_section.dart';

class SettingsAndPrivacyScreen extends StatelessWidget {
  const SettingsAndPrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppConstants.kSTEPDirectionalPadding,
            child: Column(
              children: [
                const ProfileAndRelatedScreensCustomAppBarSection(
                  isPop: true,
                  appBarTitle: AppStrings.settingsAndPrivacy,
                ),
                27.vs,
                const SettingsAndPrivacySection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
