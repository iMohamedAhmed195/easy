import '../../../../exports.dart';

Widget buildTopLeftButtonSection() {
  return Positioned(
    top: 53.h,
    left: 16.w,
    child: Container(
      width: 48.w,
      height: 48.h,
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.transparent,
            blurRadius: 8.r,
            offset: const Offset(0, 0),
            spreadRadius: 0.r,
          ),
        ],
      ),
      child: SvgDisplayer(
        assetName: AppAssets.arrowLeft,
        width: 24.w,
        height: 24.h,
        fit: BoxFit.scaleDown,
      ),
    ),
  );
}
