import 'package:easy/core/widgets/custome_svg_image.dart';

import '../../../../exports.dart';

class HomeAppBarSection extends StatelessWidget {
  const HomeAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 82.w,
            height: 26.h,
            child: CustomPngImage(
              image: AppAssets.logo,
              isAsset: true,
            )),
        const Spacer(),
        Container(
          width: 100.w,
          height: 28.h,
          decoration: BoxDecoration(
              color: AppColors.backGroundGray,
              borderRadius: BorderRadius.circular(14.5.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSVGImage(asset: AppAssets.liveChat),
              SizedBox(
                width: 6.w,
              ),
              Text(
                AppStrings().liveChat,
                style:
                    getSemiboldTextStyle(fontSize: 12, color: AppColors.black),
              )
            ],
          ),
        ),
        CustomSVGImage(asset: AppAssets.notification1),
      ],
    );
  }
}
