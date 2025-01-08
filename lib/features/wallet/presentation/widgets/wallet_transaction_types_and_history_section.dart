import 'package:easy/features/wallet/presentation/widgets/wallet_transaction_history_list_section.dart';
import 'package:easy/features/wallet/presentation/widgets/wallet_transaction_types_text_and_list_section.dart';

import '../../../../exports.dart';

class WalletTransactionTypesAndHistorySection extends StatelessWidget {
  const WalletTransactionTypesAndHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const WalletTransactionTypesTextAndListSection(),
        8.vs,
        const WalletTransactionHistoryListSection(),
      ],
    );
  }
}
