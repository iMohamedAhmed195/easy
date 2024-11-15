import 'package:easy/core/widgets/common_button_section.dart';
import 'package:easy/features/auth/presentation/widget/write_otp_section.dart';

import '../../../../exports.dart';

Future<void> withdrawPinBottomSheet(BuildContext context) async {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) => Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ), //! Adjusts padding based on keyboard visibility
      child: Container(
        padding: EdgeInsetsDirectional.fromSTEB(
          16.w,
          28.h,
          16.w,
          32.h,
        ),
        decoration: ShapeDecoration(
          color: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              topRight: Radius.circular(16.r),
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              AppStrings.enterPinTitle,
              textAlign: TextAlign.center,
              style: getBoldTextStyle(
                color: AppColors.richCharcoal,
                fontSize: 16,
              ),
            ),
            16.vs,
            Text(
              AppStrings.enterPinDescription,
              textAlign: TextAlign.center,
              style: getRegularTextStyle(
                color: AppColors.grayishBlueColor,
                fontSize: 14,
              ),
            ),
            16.vs,
            const WriteOtpSection(),
            16.vs,
            Text(
              AppStrings.forgotPin,
              style: getSemiBoldTextStyle(
                color: AppColors.primaryColor,
                fontSize: 14,
              ),
            ).alignCenterEnd(),
            16.vs,
            CommonButtonSection(
              buttonText: AppStrings.enterPinButton,
              onPressed: () {
                Navigator.pop(context); //! Close the bottom sheet
              },
            ),
          ],
        ),
      ),
    ),
  );
}
