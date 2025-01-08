import 'package:easy/features/easy_fuel/presentation/widgets/nearest_station_screen/nearest_station_screen_body_section.dart';

import '../../../../exports.dart';

class NearestStationScreen extends StatelessWidget {
  const NearestStationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: NearestStationScreenBodySection(),
    );
  }
}
