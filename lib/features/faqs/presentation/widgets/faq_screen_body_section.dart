import '../../../../core/widgets/profile_and_related_screens_app_bar_section.dart';
import '../../../../exports.dart';
import 'faq_expanded_list_section.dart';

class FaqScreenBodySection extends StatelessWidget {
  const FaqScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ProfileAndRelatedScreensCustomAppBarSection(
          isPop: true,
          appBarTitle: AppStrings.faq,
        ),
        25.vs,
        const FaqExpandedListSection(),
        121.vs,
      ],
    );
  }
}
