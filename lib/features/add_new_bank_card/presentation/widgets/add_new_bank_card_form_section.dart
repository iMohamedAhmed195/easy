import '../../../../core/widgets/common_button_section.dart';
import '../../../../exports.dart';
import 'add_new_bank_card_form_holder_name_section.dart';
import 'add_new_bank_card_form_set_card_as_default_section.dart';
import 'add_new_card_form_expiration_date_and_cvv_section.dart';
import 'new_card_form_card_number_section.dart';

class AddNewBankCardFormSection extends StatelessWidget {
  const AddNewBankCardFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NewCardFormCardNumberSection(),
        16.vs,
        const AddNewBankCardFormHolderNameSection(),
        16.vs,
        const AddNewCardFormExpirationDateAndCvvSection(),
        16.vs,
        const AddNewBankCardFormSetCardAsDefaultSection(),
        347.vs,
        CommonButtonSection(
          buttonText: AppStrings.addCardButton,
          onPressed: () => {},
        ),
      ],
    );
  }
}
