import 'package:easy/core/widgets/app_divider.dart';
import 'package:easy/core/widgets/custom_app_bar_with_back_arrow_section.dart';
import 'package:easy/features/withdraw/presentation/widgets/card_selection_section.dart';
import 'package:easy/features/withdraw/presentation/widgets/select_and_manage_card_section.dart';
import 'package:easy/features/withdraw/presentation/widgets/slide_to_withdraw_slider_section.dart';
import 'package:easy/features/withdraw/presentation/widgets/withdraw_amount_section.dart';
import 'package:easy/features/withdraw/presentation/widgets/withdraw_current_balance_and_amount_section.dart';

import '../../../../exports.dart';

class WithdrawScreenBodySection extends StatelessWidget {
  const WithdrawScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarWithBackArrowSection(
          isPop: true,
          appBarTitle: AppStrings.withdraw,
        ),
        25.vs,
        const WithdrawCurrentBalanceAndAmountSection(),
        16.vs,
        const AppDivider(),
        16.vs,
        const WithdrawAmountSection(),
        16.vs,
        const AppDivider(),
        16.vs,
        const SelectAndManageCardSection(),
        16.vs,
        const CardSelectionSection(),
        const SlideToWithdrawSliderSection(),
        32.vs,
      ],
    );
  }
}
