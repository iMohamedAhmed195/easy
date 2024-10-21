import 'package:easy/core/widgets/custom_button.dart';
import 'package:easy/core/widgets/custome_svg_image.dart';

import '../../../../exports.dart';

class ImageGetLoansSection extends StatelessWidget {
  const ImageGetLoansSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 24.h,
        ),
        Container(
          width: 328.w,
          height: 118.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [AppColors.firstLinear, AppColors.primaryColor]),
              borderRadius: BorderRadius.circular(10.r)),
          child: Row(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Get Instant Loans up\n to ',
                                style: getSemiboldTextStyle(
                                    fontSize: 14, color: AppColors.white)),
                            TextSpan(
                                text: '5000 SAR',
                                style: getRegularTextStyle(
                                    fontSize: 18, color: AppColors.white)),
                          ],
                        )
                    ),
                    SizedBox(height: 8.h,),
                    SizedBox(
                        height:32.h,
                        width: 112.w,
                        child: CustomButton(
                            backgroundColor: AppColors.white,
                            borderColor: AppColors.transparent,
                            borderRadius: 8.r,
                            style: getSemiboldTextStyle(fontSize: 12,color:AppColors.primaryColor),
                            text: AppStrings().applyNow,
                            onPressed: (){}
                        )
                    )
                  ]),
              SizedBox(
                width: 8.w,),
              CustomSVGImage(asset: AppAssets().coins,)
            ],
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
      ],
    );
  }
}
