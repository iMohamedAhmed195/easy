import 'package:easy/features/settings_and_privacy/presentation/widgets/settings_and_privacy_body_section.dart';

import '../../../../exports.dart';

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
            child: const SettingsAndPrivacyBodySection(),
          ),
        ),
      ),
    );
  }
}
