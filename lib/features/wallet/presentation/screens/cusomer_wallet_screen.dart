import 'dart:developer';

import 'package:easy/core/widgets/custom_app_bar_with_back_arrow_section.dart';
import 'package:easy/core/widgets/custom_button.dart';
import 'package:flutter/foundation.dart';

import '../../../../exports.dart';
import '../widgets/transaction_model_data.dart';
import '../widgets/transaction_types_model_data.dart';

class CustomerWalletPageScreen extends StatelessWidget {
  const CustomerWalletPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppConstants.kSTEPDirectionalPadding,
      child: Column(
        children: [
          const CustomAppBarWithBackArrowSection(
            isPop: false,
            appBarTitle: AppStrings.walletTitle,
          ),
          25.vs,
          Container(
            padding: 12.all,
            decoration: ShapeDecoration(
              color: AppColors.backGroundGray,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.currentBalance,
                  textAlign: TextAlign.center,
                  style: getSemiBoldTextStyle(
                    color: AppColors.grayishBlueColor,
                    fontSize: 14,
                  ),
                ),
                4.vs,
                Row(
                  children: [
                    Text(
                      AppStrings.balanceAmount,
                      style: getBoldTextStyle(
                        color: AppColors.richCharcoal,
                        fontSize: 32,
                      ),
                    ),
                    8.hs,
                    SvgDisplayer(
                      assetName: AppAssets.eyeIcon,
                      svgIconColor: AppColors.darkCharcoalGray,
                      height: 20.h,
                      width: 20.w,
                    ),
                  ],
                ),
                5.vs,
                Row(
                  children: [
                    SvgDisplayer(
                      assetName: AppAssets.arrowGreenUp,
                      height: 13.h,
                      width: 13.w,
                    ),
                    2.hs,
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: AppStrings.increasePercentage,
                            style: getRegularTextStyle(
                              color: AppColors.strongGreen,
                              fontSize: 11,
                            ),
                          ),
                          TextSpan(
                            text: AppStrings.loanAppliedNote,
                            style: getRegularTextStyle(
                              color: AppColors.grayishBlueColor,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                12.vs,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 148.w,
                      child: CustomButton(
                        borderColor: AppColors.softCloudBlue,
                        backgroundColor: AppColors.softCloudBlue,
                        borderRadius: 6.r,
                        height: 40.h,
                        text: AppStrings.withdraw,
                        style: getSemiBoldTextStyle(
                          fontSize: 12,
                          color: AppColors.primaryColor,
                        ),
                        onPressed: () {},
                        svgIconPath: AppAssets.roundedArrowUp,
                      ),
                    ),
                    SizedBox(
                      width: 148.w,
                      child: CustomButton(
                        borderColor: AppColors.softCloudBlue,
                        backgroundColor: AppColors.softCloudBlue,
                        borderRadius: 6.r,
                        height: 40.h,
                        text: AppStrings.deposit,
                        style: getSemiBoldTextStyle(
                          fontSize: 12,
                          color: AppColors.primaryColor,
                        ),
                        onPressed: () {},
                        svgIconPath: AppAssets.roundedArrowDown,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          16.vs,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.transactionsTitle,
                style: getSemiBoldTextStyle(
                  color: AppColors.richCharcoal,
                  fontSize: 14,
                ),
              ).alignCenterStart(),
              12.vs,
              SizedBox(
                //! TODO: In this section, we will implement filtering
                //! functionality to process the data.
                height: 32.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    transactionTypes.length,
                    (index) {
                      final transactionType = transactionTypes[index];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12.w, 0),
                        child: GestureDetector(
                          onTap: () {
                            if (kDebugMode) {
                              log("Selected transaction type: ${transactionType.name}");
                            }
                          },
                          child: Container(
                            padding: 8.pv + 24.ph,
                            decoration: ShapeDecoration(
                              color: AppColors.softCloudBlue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  transactionType.name,
                                  textAlign: TextAlign.center,
                                  style: getSemiBoldTextStyle(
                                    fontSize: 12,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              8.vs,
              SizedBox(
                height: 375.h,
                child: ListView.builder(
                  itemCount: transactions.length,
                  itemBuilder: (context, index) {
                    final transaction = transactions[index];
                    return Container(
                      padding: EdgeInsets.all(12.w),
                      margin: EdgeInsets.symmetric(vertical: 8.h),
                      decoration: ShapeDecoration(
                        color: AppColors.backGroundGray,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgDisplayer(
                                assetName: transaction.iconPath,
                                height: 40.h,
                                width: 40.w,
                              ),
                              8.hs,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          transaction.transactionType,
                                          style: getSemiBoldTextStyle(
                                            fontSize: 12,
                                            color: AppColors.richCharcoal,
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 2.h,
                                            horizontal: 8.w,
                                          ),
                                          decoration: ShapeDecoration(
                                            color: AppColors.brightGreenColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.r),
                                            ),
                                          ),
                                          child: Text(
                                            transaction.statusMessage,
                                            style: getSemiBoldTextStyle(
                                              fontSize: 10,
                                              color: AppColors.strongGreen,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    4.vs,
                                    Row(
                                      children: [
                                        Text(
                                          '${transaction.isMoneyRaising ? '+' : '-'}${transaction.moneyAmount} SAR',
                                          style: getSemiBoldTextStyle(
                                            fontSize: 20,
                                            color: transaction.moneyColor,
                                          ),
                                        ),
                                        8.hs,
                                        SvgDisplayer(
                                          assetName: transaction.arrowIconPath,
                                          height: 18.h,
                                          width: 18.w,
                                        ),
                                      ],
                                    ),
                                    8.hs,
                                    Text(
                                      transaction.date,
                                      style: getRegularTextStyle(
                                        fontSize: 12,
                                        color: AppColors.grayishBlueColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
