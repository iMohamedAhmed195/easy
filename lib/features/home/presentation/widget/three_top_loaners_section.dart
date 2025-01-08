import 'package:easy/core/widgets/custome_svg_image.dart';

import '../../../../core/widgets/custom_user_image_with_circle.dart';
import '../../../../exports.dart';

class ThreeTopLoanersSection extends StatelessWidget {
  const ThreeTopLoanersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 24.h,
        ),
        Text(
          AppStrings().topLoaners,
          style: getSemiBoldTextStyle(fontSize: 14, color: AppColors.black),
        ),
        SizedBox(
          height: 12.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 109.w,
                      height: 131.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 74.w,
                            height: 74.h,
                            clipBehavior: Clip.hardEdge,
                            padding: EdgeInsets.all(9.r),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.transparent,
                              border: Border.all(
                                  color: AppColors.primaryColor, width: 2),
                            ),
                            child: Image(
                              image: AssetImage(
                                AppAssets.customer,
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            'Ali Oaf',
                            style: getBoldTextStyle(
                                fontSize: 14, color: AppColors.black),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomSVGImage(asset: AppAssets.money2),
                              SizedBox(
                                width: 2.h,
                              ),
                              Text(
                                'SAR 6500',
                                style: getRegularTextStyle(
                                    fontSize: 12, color: AppColors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 60.h,
                      child: CircleAvatar(
                        radius: 12.r,
                        backgroundColor: AppColors.primaryColor,
                        child: Text(
                          '2',
                          style: getBoldTextStyle(
                              fontSize: 14, color: AppColors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15.h),
                  child: SizedBox(
                    width: 110.w,
                    height: 160.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CustomUserImageWithCircle(),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Ali Oaf',
                          style: getBoldTextStyle(
                              fontSize: 14, color: AppColors.black),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomSVGImage(asset: AppAssets.money2),
                            SizedBox(
                              width: 2.h,
                            ),
                            Text(
                              'SAR 6500',
                              style: getRegularTextStyle(
                                  fontSize: 12, color: AppColors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 85.h,
                  child: CircleAvatar(
                    radius: 12.r,
                    backgroundColor: AppColors.primaryColor,
                    child: Text(
                      '1',
                      style: getBoldTextStyle(
                          fontSize: 14, color: AppColors.white),
                    ),
                  ),
                ),
                Positioned(top: 1, child: CustomSVGImage(asset: AppAssets.taj)),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 109.w,
                      height: 131.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 74.w,
                            height: 74.h,
                            clipBehavior: Clip.hardEdge,
                            padding: EdgeInsets.all(9.r),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.transparent,
                              border: Border.all(
                                  color: AppColors.primaryColor, width: 2),
                            ),
                            child: Image(
                              image: AssetImage(
                                AppAssets.customer,
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            'Ali Oaf',
                            style: getBoldTextStyle(
                                fontSize: 14, color: AppColors.black),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomSVGImage(asset: AppAssets.money2),
                              SizedBox(
                                width: 2.h,
                              ),
                              Text(
                                'SAR 6500',
                                style: getRegularTextStyle(
                                    fontSize: 12, color: AppColors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 60.h,
                      child: CircleAvatar(
                        radius: 12.r,
                        backgroundColor: AppColors.primaryColor,
                        child: Text(
                          '3',
                          style: getBoldTextStyle(
                              fontSize: 14, color: AppColors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
