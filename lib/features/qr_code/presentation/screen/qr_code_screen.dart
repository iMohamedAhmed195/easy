import 'package:easy/core/widgets/app_divider.dart';
import 'package:easy/core/widgets/common_button_section.dart';
import 'package:easy/core/widgets/custom_app_bar_with_back_arrow_section.dart';
import 'package:easy/core/widgets/custom_image_provider_from_assets.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../exports.dart';

class QrCodeScreen extends StatelessWidget {
  //! TODO: Will Refactor this later ...
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConstants.kSTEPDirectionalPadding,
      child: Column(
        children: [
          const CustomAppBarWithBackArrowSection(
            isPop: false,
            appBarTitle: "QR Code",
          ),
          25.vs,
          CustomImageProviderFromAssetsAndNetwork(
            assetsImagePath: AppAssets.scanQrCode,
            assetsImageHeight: 195,
            assetsImageWidth: 195,
          ),
          24.vs,
          const Text(
            'Scan QR Code',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF252525),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          16.vs,
          const Text(
            'Scan this QR code with your app to complete the payment from your wallet balance.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF858692),
              fontSize: 12,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          16.vs,
          CustomButton(
            text: "Share QR Code",
            onPressed: () {},
            svgIconPath: AppAssets.shareIt,
            height: 48,
            borderRadius: 8,
            backgroundColor: AppColors.primaryColor,
            style: getSemiBoldTextStyle(
              color: AppColors.white,
              fontSize: 16,
            ),
          ),
          16.vs,
          CustomButton(
            text: "Save as image",
            onPressed: () {},
            svgIconPath: AppAssets.import,
            textColor: AppColors.primaryColor,
            height: 48,
            borderRadius: 8,
            backgroundColor: AppColors.transparent,
            style: getSemiBoldTextStyle(
              color: AppColors.primaryColor,
              fontSize: 16,
            ),
          ),
          24.vs,
          const AppDivider(),
          16.vs,
          const Text(
            'Customer Verification',
            style: TextStyle(
              color: Color(0xFF252525),
              fontSize: 14,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ).alignCenterStart(),
          8.vs,
          const Text(
            'Verify whether the customer is banned or not by Entering their customer ID.',
            style: TextStyle(
              color: Color(0xFF858692),
              fontSize: 12,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ).alignCenterStart(),
          16.vs,
          const Text(
            'Customer ID',
            style: TextStyle(
              color: Color(0xFF191919),
              fontSize: 12,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
            ),
          ).alignCenterStart(),
          8.vs,
          AppTextFormField(
            contentPadding: 16.ph + 12.pv,
            radius: 8,
            fillColor: AppColors.transparent,
            enabledBorderSideColor: AppColors.mediumGray,
            focusdBorderColor: AppColors.mediumGray,
            height: 46,
            hintText: "3465 7564 8732 1244",
            enabledBorderSideWidth: 1.4.w,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.r),
              borderSide: BorderSide(
                color: AppColors.mediumGray,
                width: 1.4.w,
              ),
            ),
          ),
          16.vs,
          CommonButtonSection(
            buttonText: "Verify",
            onPressed: () {
              showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.r),
                    topRight: Radius.circular(16.r),
                  ),
                ),
                builder: (context) {
                  return Container(
                    width: 360.w,
                    height: 280.h,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.w, 8.h, 16.w, 0.h),
                    decoration: ShapeDecoration(
                      color: AppColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.r),
                          topRight: Radius.circular(16.r),
                        ),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            width: 72.w,
                            height: 4.h,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFD5D5D5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(78.r),
                              ),
                            ),
                          ),
                          12.vs,
                          SvgDisplayer(
                            assetName: AppAssets.active,
                            height: 64.h,
                            width: 64.w,
                          ),
                          16.vs,
                          const Text(
                            'Account is Active',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF252525),
                              fontSize: 16,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          12.vs,
                          const Text(
                            'This customer’s account is active, you can go on and complete the transaction.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF858692),
                              fontSize: 14,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          24.vs,
                          CommonButtonSection(
                            buttonText: "Got it",
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
