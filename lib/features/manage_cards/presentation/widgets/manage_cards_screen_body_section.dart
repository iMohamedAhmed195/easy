import '../../../../core/widgets/custom_app_bar_with_back_arrow_section.dart';
import '../../../../exports.dart';
import 'manage_cards_bank_cards_list_section.dart';
import 'mange_cards_add_new_card_section.dart';

class ManageCardsScreenBodySection extends StatelessWidget {
  const ManageCardsScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarWithBackArrowSection(
          isPop: true,
          appBarTitle: AppStrings.manageCards,
        ),
        25.vs,
        const ManageCardsBankCardsListSection(),
        16.vs,
        const MangeCardsAddNewCardSection(),
      ],
    );
  }
}
