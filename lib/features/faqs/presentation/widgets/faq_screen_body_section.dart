import '../../../../core/widgets/custom_app_bar_with_back_arrow_section.dart';
import '../../../../exports.dart';
import 'faq_expanded_list_section.dart';

class FaqScreenBodySection extends StatelessWidget {
  const FaqScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CustomAppBarWithBackArrowSection(
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
