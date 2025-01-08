import '../../../../exports.dart';
import '../../../manage_cards/presentation/widgets/manage_bank_cards_model_data.dart';

class LoanCardCardsListSection extends StatelessWidget {
  const LoanCardCardsListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        manageBankCardDetails.length,
        (index) {
          final bank = manageBankCardDetails[index];
          return Padding(
            padding: EdgeInsets.only(
              bottom: index == manageBankCardDetails.length - 1 ? 0 : 12.h,
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
    );
  }
}
