import 'package:easy/features/withdraw_and_deposit/presentation/widgets/withdraw_and_deposit_pin_bottom_sheet_section.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../../../../exports.dart';
import '../../data/models/withdraw_and_deposit_screen_args_model.dart';

class SlideToWithdrawSliderSection extends StatelessWidget {
  final WithdrawAndDepositScreenArgs withdrawAndDepositScreenArgs;

  const SlideToWithdrawSliderSection(
      {super.key, required this.withdrawAndDepositScreenArgs});

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
      text: withdrawAndDepositScreenArgs.sliderTitle,
      textStyle: getSemiBoldTextStyle(
        color: AppColors.white,
        fontSize: 16,
        height: 0,
      ),
      animationDuration: AppConstants.kCommonAnimationDuration,
      //! sliderRotate: false,
      onSubmit: () {
        withdrawAndDepositPinBottomSheet(
          context,
          successMessage: withdrawAndDepositScreenArgs.successMessage,
        );
        return null;
      },
    );
  }
}
