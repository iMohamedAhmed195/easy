import 'package:easy/features/wallet/presentation/widgets/wallet_current_balance_amount_and_actions_container_section.dart';
import 'package:easy/features/wallet/presentation/widgets/wallet_transaction_types_and_history_section.dart';

import '../../../../core/widgets/custom_app_bar_with_back_arrow_section.dart';
import '../../../../exports.dart';

class WalletScreenBodySection extends StatelessWidget {
  const WalletScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarWithBackArrowSection(
          isPop: false,
          appBarTitle: AppStrings.walletTitle,
        ),
        25.vs,
        const WalletCurrentBalanceAmountAndActionsContainerSection(),
        16.vs,
        const WalletTransactionTypesAndHistorySection(),
      ],
    );
  }
}
