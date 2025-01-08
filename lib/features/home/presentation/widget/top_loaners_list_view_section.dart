import 'package:easy/core/widgets/custome_svg_image.dart';

import '../../../../exports.dart';

class TopLoanersListViewSection extends StatelessWidget {
  const TopLoanersListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300.h,
        child: ListView.separated(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => buildTopLoanersListView(),
            separatorBuilder: (context, index) => SizedBox(
                  height: 12.h,
                ),
            itemCount: 5));
  }

  Widget buildTopLoanersListView() {
    return Container(
      width: 328.w,
      height: 48.h,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: BoxDecoration(
        color: AppColors.backGroundGray,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Text(
            '4',
            style: getSemiBoldTextStyle(fontSize: 14, color: AppColors.black),
          ),
          SizedBox(
            width: 12.w,
          ),
          CircleAvatar(
            radius: 16.r,
            backgroundColor: AppColors.white,
            child: CustomPngImage(
              image: AppAssets.provider,
              isAsset: true,
            ),
          ),
          SizedBox(
            width: 12.w,
          ),
          Text(
            'Ahmed Adel',
            style: getSemiBoldTextStyle(fontSize: 14, color: AppColors.black),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSVGImage(asset: AppAssets.money2),
              SizedBox(
                width: 2.h,
              ),
              Text(
                'SAR 6500',
                style:
                    getRegularTextStyle(fontSize: 12, color: AppColors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
