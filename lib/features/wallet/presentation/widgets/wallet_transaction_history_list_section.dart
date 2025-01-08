import 'package:easy/features/wallet/presentation/widgets/wallet_histiry_list_item_section.dart';

import '../../../../exports.dart';
import 'transaction_model_data.dart';

class WalletTransactionHistoryListSection extends StatelessWidget {
  const WalletTransactionHistoryListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 375.h,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions[index];
          return WalletHistiryListItemSection(
            transaction: transaction,
          );
        },
      ),
    );
  }
}
