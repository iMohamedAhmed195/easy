import 'package:easy/features/add_new_bank_card/presentation/widgets/add_new_bank_card_screen_body_section.dart';

import '../../../../exports.dart';

class AddNewBankCardScreen extends StatelessWidget {
  const AddNewBankCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppConstants.kSTEPDirectionalPadding,
            child: const AddNewBankCardScreenBodySection(),
          ),
        ),
      ),
    );
  }
}
