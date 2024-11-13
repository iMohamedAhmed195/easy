import '../../../../core/widgets/common_button_section.dart';
import '../../../../core/widgets/profile_and_related_screens_app_bar_section.dart';
import '../../../../exports.dart';
import 'language_selection_lis_section.dart';

class LanguageSelectionBodySection extends StatelessWidget {
  const LanguageSelectionBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileAndRelatedScreensCustomAppBarSection(
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
