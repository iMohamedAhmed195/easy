import 'package:easy/features/withdraw_and_deposit/data/models/withdraw_and_deposit_screen_args_model.dart';
import 'package:easy/features/withdraw_and_deposit/presentation/widgets/withdraw_and_deposit_screen_body_section.dart';

import '../../../../exports.dart';

class WithdrawAndDepositScreen extends StatelessWidget {
  final WithdrawAndDepositScreenArgs withdrawAndDepositScreenArgs;
//! Unified Withdraw/Deposit in `WithdrawAndDepositScreen` to reduce duplication,
//! improve maintainability, and streamline UX.
//! Args control dynamic UI (e.g., slider title, success message).
//! Shared widgets handle card selection, amount setting,
//! and PIN entry for both actions.

  const WithdrawAndDepositScreen(
      {super.key, required this.withdrawAndDepositScreenArgs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, //! Allows adjusting for keyboard
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppConstants.kSTEPDirectionalPadding,
            child: WithdrawAndDepositScreenBodySection(
              withdrawAndDepositScreenArgs: withdrawAndDepositScreenArgs,
            ),
          ),
        ),
      ),
    );
  }
}
