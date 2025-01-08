import '../../../../exports.dart';
import '../widgets/change_pin_body_section.dart';

class ChangePinScreen extends StatelessWidget {
  const ChangePinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppConstants.kSTEPDirectionalPadding,
            child: const ChangePinBodySection(),
          ),
        ),
      ),
    );
  }
}
