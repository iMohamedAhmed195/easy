import '../../../../exports.dart';
import '../widget/customer/customer_notifications_body_section.dart';

class ProviderNotificationsScreen extends StatelessWidget {
  const ProviderNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppConstants.kSTEPDirectionalPadding,
            //! TODO: "I haven't refactored this class further yet, as I'm waiting to
            //!understand how the logic (filter) will be implemented."
            child: const NotificationsBodySection(),
          ),
        ),
      ),
    );
  }
}
