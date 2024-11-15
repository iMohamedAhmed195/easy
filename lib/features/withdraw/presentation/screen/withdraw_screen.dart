import 'package:easy/core/widgets/app_divider.dart';
import 'package:easy/core/widgets/common_button_section.dart';
import 'package:easy/core/widgets/custom_app_bar_with_back_arrow_section.dart';
import 'package:easy/features/auth/presentation/widget/write_otp_section.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../../../../exports.dart';

class WithdrawScreen extends StatelessWidget {
  const WithdrawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, //! Allows adjusting for keyboard
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
                232.vs,
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
                  animationDuration: AppConstants.kCommonAnimationDuration,
                  // sliderRotate: false,
                  onSubmit: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ), //! Adjusts padding based on keyboard visibility
                        child: Container(
                          padding: EdgeInsetsDirectional.fromSTEB(
                            16.w,
                            28.h,
                            16.w,
                            32.h,
                          ),
                          decoration: ShapeDecoration(
                            color: AppColors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16.r),
                                topRight: Radius.circular(16.r),
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Please Enter your PIN',
                                textAlign: TextAlign.center,
                                style: getBoldTextStyle(
                                  color: AppColors.richCharcoal,
                                  fontSize: 16,
                                ),
                              ),
                              16.vs,
                              Text(
                                'Enter your 4-digits PIN to complete the withdrawal',
                                textAlign: TextAlign.center,
                                style: getRegularTextStyle(
                                  color: AppColors.grayishBlueColor,
                                  fontSize: 14,
                                ),
                              ),
                              16.vs,
                              const WriteOtpSection(),
                              16.vs,
                              Text(
                                'Forgot your PIN?',
                                style: getSemiBoldTextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 14,
                                ),
                              ).alignCenterEnd(),
                              16.vs,
                              CommonButtonSection(
                                buttonText: "Enter PIN",
                                onPressed: () {
                                  Navigator.pop(
                                      context); //! Close the bottom sheet
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                    return null;
                  },
                ),
                32.vs,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
