import 'package:easy/core/widgets/custome_svg_image.dart';

import '../../../../exports.dart';

class CurrentBalanceSection extends StatelessWidget {
  const CurrentBalanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings().currentBalance,
          style: getSemiBoldTextStyle(fontSize: 14, color: AppColors.gray),
        ),
        SizedBox(
          height: 4.h,
        ),
        Row(
          children: [
            Text(
              'SAR 12,450.99',
              style: getBoldTextStyle(fontSize: 32, color: AppColors.black),
            ),
            SizedBox(
              width: 8.w,
            ),
            CustomSVGImage(
              asset: AppAssets.eyeIcon,
              color: AppColors.black,
            ),
          ],
        ),
        SizedBox(
          height: 4.h,
        ),
        Row(
          children: [
            CustomSVGImage(
              asset: AppAssets.arrowGreenUp,
            ),
            SizedBox(
              width: 4.w,
            ),
            Text(
              '+2.35% from last week ',
              style: getRegularTextStyle(fontSize: 11, color: AppColors.green),
            ),
            Text(
              ' (2 loans applied)',
              style: getRegularTextStyle(fontSize: 11, color: AppColors.gray),
            ),
          ],
        )
      ],
    );
  }
}
