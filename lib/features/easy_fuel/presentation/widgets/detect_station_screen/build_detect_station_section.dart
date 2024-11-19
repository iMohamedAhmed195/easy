import '../../../../../core/widgets/common_button_section.dart';
import '../../../../../exports.dart';
import 'build_station_container_section.dart';

Widget buildDetectStationSection(VoidCallback onPressed) {
  return buildStationContainerSection(
    child: CommonButtonSection(
      buttonText: AppStrings.detectNearestStation,
      onPressed: onPressed,
    ),
  );
}
