import '../../../../exports.dart';
import '../../data/models/withdraw_and_deposit_screen_args_model.dart';

class CardSelectionSection extends StatelessWidget {
  final WithdrawAndDepositScreenArgs withdrawAndDepositScreenArgs;

  const CardSelectionSection(
      {super.key, required this.withdrawAndDepositScreenArgs});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          withdrawAndDepositScreenArgs.bankCardDetails.length,
          (index) {
            final bank = withdrawAndDepositScreenArgs.bankCardDetails[index];
            return Padding(
              padding: EdgeInsets.only(
                bottom: index ==
                        withdrawAndDepositScreenArgs.bankCardDetails.length - 1
                    ? 0
                    : 12.h,
              ),
              child: Container(
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
                          bank.bankName,
                          style: getSemiBoldTextStyle(
                            fontSize: 12,
                            color: AppColors.richCharcoal,
                          ),
                        ),
                        4.vs,
                        Text(
                          bank.bankNumber,
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
            );
          },
        ),
        withdrawAndDepositScreenArgs.bankCardDetails.length < 3
            ? 232.vs
            : 80.vs,
      ],
    );
  }
}
