import 'package:easy/features/my_loans/presentation/widgets/my_loans_screen_body_section.dart';
import '../../../../exports.dart';

class MyLoansPageScreen extends StatelessWidget {
  const MyLoansPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConstants.kSTEPDirectionalPadding,
      child: const MyLoansScreenBodySection(),
    );
  }
}
