import '../../../../../core/widgets/common_button_section.dart';
import '../../../../../core/widgets/custom_image_provider_from_assets.dart';
import '../../../../../exports.dart';
import 'build_info_row_section.dart';

Widget buildBottomContainerSection(BuildContext context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      width: double.infinity,
      height: 420.h,
      padding: EdgeInsetsDirectional.fromSTEB(16.w, 16.h, 16.w, 0.h),
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.r),
            topRight: Radius.circular(24.r),
          ),
        ),
      ),
      child: Column(
        children: [
          CustomImageProviderFromAssetsAndNetwork(
            assetsImagePath: AppAssets.logo,
            assetsImageWidth: 82.w,
            assetsImageHeight: 26.h,
          ),
          16.vs,
          Text(
            AppStrings.howItWorks,
            textAlign: TextAlign.center,
            style: getSemiBoldTextStyle(
              fontSize: 16,
              color: AppColors.richCharcoal,
            ),
          ),
          21.vs,
          buildInfoRowSection(AppAssets.gasStation, AppStrings.detectStation),
          40.vs,
          buildInfoRowSection(AppAssets.driving, AppStrings.driveToStation),
          40.vs,
          buildInfoRowSection(AppAssets.scan, AppStrings.scanQRCode),
          25.vs,
          CommonButtonSection(
            buttonText: AppStrings.getStarted,
            onPressed: () {
              Routes.easyFuelDetectNearestStationScreenRoute.moveTo();
            },
          ),
          20.vs,
        ],
      ),
    ),
  );
}
