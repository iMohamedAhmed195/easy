import 'package:easy/features/add_new_bank_card/presentation/widgets/add_new_bank_card_form_section.dart';

import '../../../../core/widgets/custom_app_bar_with_back_arrow_section.dart';
import '../../../../exports.dart';

class AddNewBankCardScreenBodySection extends StatelessWidget {
  const AddNewBankCardScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarWithBackArrowSection(
          isPop: true,
          appBarTitle: AppStrings.addNewBankCardTitle,
        ),
        25.vs,
        const AddNewBankCardFormSection(),
        32.vs,
      ],
    );
  }
}
