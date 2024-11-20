
  import '../../../../../core/widgets/custom_button.dart';
import '../../../../../exports.dart';

Widget buildScanButton() {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: CustomButton(
        text: AppStrings.scanQrButtonText,
        onPressed: () {
          Routes.qrCodeScanningScreenRoute.moveTo();
        },
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
    );
  }