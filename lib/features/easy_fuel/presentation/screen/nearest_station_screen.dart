import 'package:easy/core/widgets/custom_button.dart';

import '../../../../core/widgets/custom_image_provider_from_assets.dart';
import '../../../../exports.dart';
import '../widgets/build_search_field_section.dart';
import '../widgets/build_top_left_back_button_section.dart';

class NearestStationScreen extends StatelessWidget {
  const NearestStationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            children: [
              CustomImageProviderFromAssetsAndNetwork(
                assetsImagePath: AppAssets.map,
                assetsImageHeight: 271,
              ),
            ],
          ),
          buildTopLeftButtonSection(),
          buildSearchFieldSection(context),
          Align(
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
                    CustomImageProviderFromAssetsAndNetwork(
                      assetsImagePath: AppAssets.station,
                      assetsImageHeight: 162,
                      assetsImageWidth: 328,
                    ),
                    16.vs,
                    Text(
                      AppStrings.stationName,
                      style: getSemiBoldTextStyle(
                        fontSize: 20,
                        color: AppColors.richCharcoal,
                      ),
                    ).alignCenterStart(),
                    16.vs,
                    Row(
                      children: [
                        SvgDisplayer(
                            assetName: AppAssets.location,
                            height: 24.h,
                            width: 24.w),
                        7.hs,
                        Flexible(
                          child: Text(
                            AppStrings.stationAddress,
                            style: getRegularTextStyle(
                              fontSize: 16,
                              color: AppColors.grayishBlueColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    17.vs,
                    Row(
                      children: [
                        SvgDisplayer(
                          assetName: AppAssets.call,
                          height: 24.h,
                          width: 24.w,
                        ),
                        7.hs,
                        Flexible(
                          child: Text(
                            AppStrings.stationPhone,
                            style: getRegularTextStyle(
                              fontSize: 16,
                              color: AppColors.grayishBlueColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    18.vs,
                    Row(
                      children: [
                        SvgDisplayer(
                          assetName: AppAssets.clock,
                          height: 24.h,
                          width: 24.w,
                        ),
                        7.hs,
                        Flexible(
                          child: Text(
                            AppStrings.stationHours,
                            style: getRegularTextStyle(
                              fontSize: 16,
                              color: AppColors.strongGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                    25.vs,
                    CustomButton(
                      text: AppStrings.scanQrButtonText,
                      onPressed: () {},
                      svgIconPath: AppAssets.scanQrCodeWhite,
                      height: 48,
                      borderRadius: 8,
                      backgroundColor: AppColors.primaryColor,
                      style: getSemiBoldTextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontFamily: FontFamilies.openSans,
                      ),
                    ),
                    16.vs,
                    AppTextButton(
                      borderSideWidth: 1,
                      borderColor: AppColors.primaryColor,
                      backgroundColor: AppColors.transparent,
                      borderRadius: 8,
                      buttonText: AppStrings.setDirectionsButtonText,
                      textStyle: getSemiBoldTextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                        fontFamily: FontFamilies.openSans,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
