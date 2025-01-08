import 'package:easy/exports.dart';

class CustomUserImageWithCircle extends StatelessWidget {
  const CustomUserImageWithCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 84.w,
      height: 84.h,
      padding: EdgeInsets.all(9.r),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.transparent,
        border: Border.all(
          color: AppColors.primaryColor,
          width: 2.w,
        ),
      ),
      child: Image(
        image: AssetImage(
          AppAssets.provider,
        ),
        fit: BoxFit.fill,
      ),
    );
  }
}
