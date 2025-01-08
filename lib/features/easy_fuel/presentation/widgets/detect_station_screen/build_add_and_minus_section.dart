import '../../../../../exports.dart';
import 'build_svg_icon_section.dart';

Widget buildAddAndMinusSection() {
  const double bottomAddAndMinusPosition = 176.0;

  return Positioned(
    bottom: bottomAddAndMinusPosition.h,
    right: 16.w,
    child: Container(
      padding: 10.pv + 5.5.ph,
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      child: Column(
        children: [
          buildSvgIconSection(AppAssets.add),
          12.vs,
          Container(
            width: 38.w,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.70.w,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: AppColors.borderColor2,
                ),
              ),
            ),
          ),
          12.vs,
          buildSvgIconSection(AppAssets.minus),
        ],
      ),
    ),
  );
}
