 import '../../../../../exports.dart';

Widget buildAcceptLoanTermSection(loanData) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgDisplayer(
              assetName: AppAssets.moneyChangeBlack,
              height: 16.h,
              width: 16.w,
            ),
            4.hs,
            Text(
              AppStrings.loanTermLabel,
              style: getRegularTextStyle(
                color: AppColors.richCharcoal,
                fontSize: 12,
              ),
            ),
          ],
        ),
        Text(
          loanData.loanTerm,
          textAlign: TextAlign.right,
          style: getSemiBoldTextStyle(
            color: AppColors.primaryColor,
            fontSize: 12,
          ),
        ),
      ],
    );
  }