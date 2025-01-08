import '../../../../exports.dart';
import '../widget/customer/customer_notifications_body_section.dart';

class CustomerNotificationsScreen extends StatelessWidget {
  const CustomerNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppConstants.kSTEPDirectionalPadding,
            child: const NotificationsBodySection(),
          ),
        ),
      ),
    );
  }
}
