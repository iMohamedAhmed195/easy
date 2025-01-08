import 'package:easy/features/qr_code_scanning/presentation/widgets/qr_code_scanning_screen_body_section.dart';
import '../../../../exports.dart';

class QrCodeScanningScreen extends StatelessWidget {
  const QrCodeScanningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: QrCodeScanningScreenBodySection(),
    );
  }
}
