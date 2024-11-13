import '../../../../core/widgets/common_button_section.dart';
import '../../../../core/widgets/custom_app_bar_with_back_arrow_section.dart';
import '../../../../exports.dart';
import 'language_selection_lis_section.dart';

class LanguageSelectionBodySection extends StatelessWidget {
  const LanguageSelectionBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarWithBackArrowSection(
          isPop: true,
          appBarTitle: AppStrings.language,
        ),
        23.vs,
        const LanguageSelectionListSection(),
        20.vs,
        CommonButtonSection(
          buttonText: AppStrings.select,
          onPressed: () {},
        ),
        48.vs,
      ],
    );
  }
}
