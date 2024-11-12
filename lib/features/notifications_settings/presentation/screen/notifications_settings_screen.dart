import '../../../../exports.dart';
import '../widgets/notifications_settings_body_section.dart';

class NotificationsSettingsScreen extends StatelessWidget {
  const NotificationsSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppConstants.kSTEPDirectionalPadding,
            child: const NotificationsSettingsBodySection(),
          ),
        ),
      ),
    );
  }
}
