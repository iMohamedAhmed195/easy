import '../../../../../core/widgets/common_button_section.dart';
import '../../../../../exports.dart';

Widget buildDetectStation() {
  const double buttonHeight = 99.0;
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      width: double.infinity,
      height: buttonHeight.h,
      padding: EdgeInsetsDirectional.fromSTEB(16.w, 26.h, 16.w, 25.h),
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r),
            topRight: Radius.circular(16.r),
          ),
        ),
      ),
      child: CommonButtonSection(
        buttonText: AppStrings.detectNearestStation,
        onPressed: () {},
      ),
    ),
  );
}
