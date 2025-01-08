import '../../../../exports.dart';
import '../../data/models/withdraw_and_deposit_screen_args_model.dart';

class WithdrawAndDepositAmountSection extends StatelessWidget {
  final WithdrawAndDepositScreenArgs withdrawAndDepositScreenArgs;

  const WithdrawAndDepositAmountSection(
      {super.key, required this.withdrawAndDepositScreenArgs});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.setAmount,
          style: getSemiBoldTextStyle(
            fontSize: 14,
            color: AppColors.richCharcoal,
          ),
        ).alignCenterStart(),
        4.vs,
        Text(
          AppStrings.withdrawQuestionText,
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
              side: BorderSide(width: 1.w, color: AppColors.borderColor2),
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          child: Center(
            child: Text(
              withdrawAndDepositScreenArgs.amountToSet,
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
                withdrawAndDepositScreenArgs.amountToSet,
                textAlign: TextAlign.center,
                style: getSemiBoldTextStyle(
                  fontSize: 12,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
