import 'package:easy/exports.dart';

import '../widgets/faq_screen_body_section.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: AppConstants.kSTEPDirectionalPadding,
        child: const FaqScreenBodySection(),
      ),
    );
  }
}
