import 'package:easy/features/withdraw/presentation/widgets/withdraw_screen_body_section.dart';

import '../../../../exports.dart';

class WithdrawScreen extends StatelessWidget {
  const WithdrawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, //! Allows adjusting for keyboard
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppConstants.kSTEPDirectionalPadding,
            child: const WithdrawScreenBodySection(),
          ),
        ),
      ),
    );
  }
}
