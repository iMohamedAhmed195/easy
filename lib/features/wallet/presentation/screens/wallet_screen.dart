import 'package:easy/features/wallet/presentation/widgets/wallet_screen_body_section.dart';

import '../../../../exports.dart';

class WalletPageScreen extends StatelessWidget {
  const WalletPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConstants.kSTEPDirectionalPadding,
      child: const WalletScreenBodySection(),
    );
  }
}
