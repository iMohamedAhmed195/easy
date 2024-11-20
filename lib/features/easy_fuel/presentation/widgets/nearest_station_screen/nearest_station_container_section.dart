import '../../../../../exports.dart';
import 'build_info_row.dart';
import 'build_scan_button.dart';
import 'build_set_direction_button.dart';
import 'build_station_image.dart';
import 'build_station_name.dart';

class NearestStationContainerSection extends StatelessWidget {
  const NearestStationContainerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 360.w,
        height: 529.h,
        padding: EdgeInsetsDirectional.fromSTEB(16.w, 16.h, 16.w, 22.h),
        decoration: ShapeDecoration(
          color: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.r),
              topRight: Radius.circular(24.r),
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildStationImage(),
              buildStationName(),
              buildInfoRow(AppAssets.location, AppStrings.stationAddress),
              buildInfoRow(AppAssets.call, AppStrings.stationPhone),
              buildInfoRow(AppAssets.clock, AppStrings.stationHours,
                  color: AppColors.strongGreen),
              buildScanButton(),
              buildSetDirectionsButton(),
            ],
          ),
        ),
      ),
    );
  }
}
