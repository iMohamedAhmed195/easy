import '../../../../exports.dart';
import 'manage_bank_cards_list_item_section.dart';
import 'manage_bank_cards_model_data.dart';

class ManageCardsBankCardsListSection extends StatelessWidget {
  const ManageCardsBankCardsListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        manageBankCardDetails.length,
        (index) {
          final bank = manageBankCardDetails[index];
          return Padding(
            padding: EdgeInsets.only(
              bottom: index == manageBankCardDetails.length - 1 ? 0 : 12.h,
            ),
            child: ManageBankCardsListItemSection(bank: bank),
          );
        },
      ),
    );
  }
}
