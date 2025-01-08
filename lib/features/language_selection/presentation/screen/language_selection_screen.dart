import '../../../../exports.dart';
import '../widgets/language_selection_body_section.dart';

class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppConstants.kSTEPDirectionalPadding,
            child: const LanguageSelectionBodySection(),
          ),
        ),
      ),
    );
  }
}
