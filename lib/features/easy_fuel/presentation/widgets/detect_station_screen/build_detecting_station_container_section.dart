import '../../../../../exports.dart';
import 'build_station_container_section.dart';

Widget buildDetectingStationContainerSection() {
  return buildStationContainerSection(
    child: Column(
      children: [
        Text(
          AppStrings.detectingNearestStation,
          textAlign: TextAlign.center,
          style: getSemiBoldTextStyle(
            fontSize: 16,
            color: AppColors.richCharcoal,
          ),
        ),
        16.vs,
        Container(
          width: 328.w,
          height: 5.h,
          decoration: ShapeDecoration(
            color: AppColors.borderColor2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
        ),
      ],
    ),
  );
}
