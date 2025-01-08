import '../../../../core/widgets/custom_app_bar_with_back_arrow_section.dart';
import '../../../../core/widgets/save_changes_button.dart';
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
            const CustomAppBarWithBackArrowSection(
              isPop: true,
              appBarTitle: AppStrings.settingsAndPrivacy,
            ),
            27.vs,
            const PreferencesSection(),
            8.vs,
            const PrivacySection(),
            123.vs,
            const SaveChangesButton(),
            32.vs,
          ],
        ),
      ],
    );
  }
}
