import 'package:easy/core/widgets/app_divider.dart';
import 'package:easy/core/widgets/custom_app_bar_with_back_arrow_section.dart';
import 'package:easy/features/withdraw_and_deposit/presentation/widgets/card_selection_section.dart';
import 'package:easy/features/withdraw_and_deposit/presentation/widgets/select_and_manage_card_section.dart';
import 'package:easy/features/withdraw_and_deposit/presentation/widgets/slide_to_withdraw_or_deposit_slider_section.dart';
import 'package:easy/features/withdraw_and_deposit/presentation/widgets/withdraw_and_deposit_amount_section.dart';
import 'package:easy/features/withdraw_and_deposit/presentation/widgets/withdraw_and_deposit_current_balance_and_amount_section.dart';

import '../../../../exports.dart';
import '../../data/models/withdraw_and_deposit_screen_args_model.dart';

class WithdrawAndDepositScreenBodySection extends StatelessWidget {
  final WithdrawAndDepositScreenArgs withdrawAndDepositScreenArgs;

  const WithdrawAndDepositScreenBodySection(
      {super.key, required this.withdrawAndDepositScreenArgs});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBarWithBackArrowSection(
          isPop: true,
          appBarTitle: withdrawAndDepositScreenArgs.screenFeatureName,
        ),
        25.vs,
        WithdrawAndDepositCurrentBalanceAndAmountSection(
          withdrawAndDepositScreenArgs: withdrawAndDepositScreenArgs,
        ),
        16.vs,
        const AppDivider(),
        16.vs,
        WithdrawAndDepositAmountSection(
          withdrawAndDepositScreenArgs: withdrawAndDepositScreenArgs,
        ),
        16.vs,
        const AppDivider(),
        16.vs,
        const SelectAndManageCardSection(),
        16.vs,
        CardSelectionSection(
          withdrawAndDepositScreenArgs: withdrawAndDepositScreenArgs,
        ),
        SlideToWithdrawSliderSection(
          withdrawAndDepositScreenArgs: withdrawAndDepositScreenArgs,
        ),
        32.vs,
      ],
    );
  }
}
