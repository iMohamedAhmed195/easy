import 'package:easy/features/easy_fuel/presentation/widgets/detect_station_screen/detect_station_screen_body_section.dart';

import '../../../../exports.dart';

class EasyFuelScreenDetectNearestStationScreen extends StatelessWidget {
  const EasyFuelScreenDetectNearestStationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: DetectStationScreenBodySection(),
    );
  }
}
