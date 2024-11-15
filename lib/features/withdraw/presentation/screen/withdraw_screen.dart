import 'dart:developer';

import 'package:easy/core/widgets/app_divider.dart';
import 'package:easy/core/widgets/custom_app_bar_with_back_arrow_section.dart';
import 'package:flutter/foundation.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../../../../exports.dart';

class WithdrawScreen extends StatelessWidget {
  const WithdrawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppConstants.kSTEPDirectionalPadding,
            child: Column(
              children: [
                const CustomAppBarWithBackArrowSection(
                  isPop: true,
                  appBarTitle: AppStrings.withdraw,
                ),
                25.vs,
                Text(
                  AppStrings.currentBalance,
                  style: getSemiBoldTextStyle(
                    color: AppColors.grayishBlueColor,
                    fontSize: 14,
                  ),
                ).alignCenterStart(),
                4.vs,
                Text(
                  AppStrings.balanceAmount,
                  style: getBoldTextStyle(
                    fontSize: 32,
                    color: AppColors.richCharcoal,
                  ),
                ).alignCenterStart(),
                16.vs,
                const AppDivider(),
                16.vs,
                Text(
                  'Set Amount',
                  style: getSemiBoldTextStyle(
                    fontSize: 14,
                    color: AppColors.richCharcoal,
                  ),
                ).alignCenterStart(),
                4.vs,
                Text(
                  'How much would you like to withdraw?',
                  style: getRegularTextStyle(
                    color: AppColors.grayishBlueColor,
                    fontSize: 12,
                  ),
                ).alignCenterStart(),
                16.vs,
                Container(
                  width: double.infinity.w,
                  height: 56.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:
                          BorderSide(width: 1.w, color: AppColors.borderColor2),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '2,000 SAR',
                      textAlign: TextAlign.center,
                      style: getSemiBoldTextStyle(
                        fontSize: 24,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
                16.vs,
                Container(
                  padding: 13.pv + 24.ph,
                  decoration: ShapeDecoration(
                    color: AppColors.backGroundGray,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '500 SAR',
                        textAlign: TextAlign.center,
                        style: getSemiBoldTextStyle(
                          fontSize: 12,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                16.vs,
                const AppDivider(),
                16.vs,
                Row(
                  children: [
                    Text(
                      'Select Card',
                      style: getSemiBoldTextStyle(
                        fontSize: 14,
                        color: AppColors.grayishBlueColor,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Manage Cards',
                      style: getRegularTextStyle(
                        fontSize: 12,
                        color: AppColors.primaryColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                16.vs,
                Container(
                  padding: 12.all,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1.w,
                        color: AppColors.borderColor2,
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  child: Row(
                    children: [
                      SvgDisplayer(
                        assetName: AppAssets.bankCard,
                        height: 40.h,
                        width: 40.w,
                      ),
                      8.hs,
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Saudi Awwal Bank (SAB)',
                            style: getSemiBoldTextStyle(
                              fontSize: 12,
                              color: AppColors.richCharcoal,
                            ),
                          ),
                          4.vs,
                          Text(
                            '**** 4210',
                            style: getRegularTextStyle(
                              fontSize: 12,
                              color: AppColors.grayishBlueColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                80.vs,
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
                  text: "Slide to Withdraw",
                  textStyle: getSemiBoldTextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    height: 0,
                  ),
                  // sliderRotate: false,
                  onSubmit: () {
                    if (kDebugMode) {
                      log("Open Withdraw PIN Entry Dialog");
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
