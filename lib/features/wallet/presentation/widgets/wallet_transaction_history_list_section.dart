import '../../../../exports.dart';
import 'transaction_model_data.dart';

class WalletTransactionHistoryListSection extends StatelessWidget {
  const WalletTransactionHistoryListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                transaction.transactionType,
                                style: getSemiBoldTextStyle(
                                  fontSize: 12,
                                  color: AppColors.richCharcoal,
                                ),
                              ),
                              Container(
                                padding: 8.ph + 2.pv,
                                decoration: ShapeDecoration(
                                  color: AppColors.brightGreenColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.r),
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
    );
  }
}
