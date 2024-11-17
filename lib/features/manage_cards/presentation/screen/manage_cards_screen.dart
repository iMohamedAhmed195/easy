
import 'package:easy/features/manage_cards/presentation/widgets/manage_cards_screen_body_section.dart';

import '../../../../exports.dart';

class ManageCardsScreen extends StatelessWidget {
  const ManageCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppConstants.kSTEPDirectionalPadding,
            child: const ManageCardsScreenBodySection(),
          ),
        ),
      ),
    );
  }
}
