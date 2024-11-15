import 'package:easy/features/withdraw/presentation/widgets/withdraw_pin_bottom_sheet_section.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../../../../exports.dart';

class SlideToWithdrawSliderSection extends StatelessWidget {
  const SlideToWithdrawSliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SlideAction(
      borderRadius: 6.r,
      elevation: 0,
      innerColor: AppColors.white,
      outerColor: AppColors.primaryColor,
      sliderButtonIcon: SvgDisplayer(
        assetName: AppAssets.arrowRight,
        height: 24.h,
        width: 24.w,
        svgIconColor: AppColors.primaryColor,
      ),
      text: "Slide to Withdraw",
      textStyle: getSemiBoldTextStyle(
        color: AppColors.white,
        fontSize: 16,
        height: 0,
      ),
      animationDuration: AppConstants.kCommonAnimationDuration,
      //! sliderRotate: false,
      onSubmit: () {
        withdrawPinBottomSheet(context);
        return null;
      },
    );
  }
}
