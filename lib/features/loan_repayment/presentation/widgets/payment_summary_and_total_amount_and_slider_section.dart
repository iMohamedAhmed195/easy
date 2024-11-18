import 'package:slide_to_act/slide_to_act.dart';

import '../../../../core/widgets/app_divider.dart';
import '../../../../exports.dart';

class PaymentSummaryAndTotalAmountAndSliderSection extends StatelessWidget {
  final bool? showSlider;
  const PaymentSummaryAndTotalAmountAndSliderSection(
      {super.key, this.showSlider});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.paymentSummary,
          style: getSemiBoldTextStyle(
            fontSize: 14,
            color: AppColors.richCharcoal,
          ),
        ),
        13.vs,
        Row(
          children: [
            Text(
              AppStrings.loanId,
              style: getRegularTextStyle(
                fontSize: 12,
                color: AppColors.grayishBlueColor,
              ),
            ),
            const Spacer(),
            Text(
              AppStrings.loanId1,
              style: getSemiBoldTextStyle(
                fontSize: 14,
                color: AppColors.richCharcoal,
              ),
            ),
          ],
        ),
        12.vs,
        Row(
          children: [
            Text(
              AppStrings.loanAmount,
              style: getRegularTextStyle(
                fontSize: 12,
                color: AppColors.grayishBlueColor,
              ),
            ),
            const Spacer(),
            Text(
              AppStrings.loanBalance1,
              style: getSemiBoldTextStyle(
                fontSize: 14,
                color: AppColors.richCharcoal,
              ),
            ),
          ],
        ),
        12.vs,
        Row(
          children: [
            Text(
              AppStrings.contractTaxPrice,
              style: getRegularTextStyle(
                fontSize: 12,
                color: AppColors.grayishBlueColor,
              ),
            ),
            const Spacer(),
            Text(
              AppStrings.smallWithdrawAmountText,
              style: getSemiBoldTextStyle(
                fontSize: 14,
                color: AppColors.richCharcoal,
              ),
            ),
          ],
        ),
        12.vs,
        const AppDivider(),
        12.vs,
        Row(
          children: [
            Text(
              AppStrings.totalAmount,
              style: getSemiBoldTextStyle(
                fontSize: 12,
                color: AppColors.richCharcoal,
              ),
            ),
            const Spacer(),
            Text(
              AppStrings.loanBalance1,
              style: getBoldTextStyle(
                fontSize: 20,
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
        Visibility(
          visible: showSlider ?? true,
          child: Column(
            children: [
              293.vs,
              SlideAction(
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
                text: AppStrings.slideToRepay,
                textStyle: getSemiBoldTextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                  height: 0,
                ),
                animationDuration: AppConstants.kCommonAnimationDuration,
                //! sliderRotate: false,
                onSubmit: () {
                  Routes.paymentDoneScreenRoute.moveTo();
                  return null;
                },
              ),
              32.vs,
            ],
          ),
        ),
      ],
    );
  }
}
