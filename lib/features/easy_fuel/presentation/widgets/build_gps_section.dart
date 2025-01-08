import '../../../../exports.dart';
import 'detect_station_screen/build_svg_icon_section.dart';

Widget buildGpsSection(double bottomGpsPosition) {
  return Positioned(
    bottom: bottomGpsPosition.h,
    right: 16.w,
    child: Container(
      padding: 12.all,
      decoration: const ShapeDecoration(
        color: AppColors.white,
        shape: OvalBorder(),
      ),
      child: buildSvgIconSection(AppAssets.gps),
    ),
  );
}
