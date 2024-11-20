import 'package:easy/features/easy_fuel/presentation/widgets/get_started_screen/easy_fuel_screen_body_section.dart';
import '../../../../exports.dart';

class EasyFuelScreen extends StatelessWidget {
  const EasyFuelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: EasyFuelScreenBodySection(),
    );
  }
}