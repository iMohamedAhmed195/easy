import 'package:easy/features/withdraw/presentation/widgets/bank_card_details_model_data.dart';

import '../../../../exports.dart';

class CardSelectionSection extends StatelessWidget {
  const CardSelectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          bankCardDetails.length,
          (index) {
            final bank = bankCardDetails[index];
            return Padding(
              padding: EdgeInsets.only(
                bottom: index == bankCardDetails.length - 1 ? 0 : 12.h,
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
        bankCardDetails.length < 3 ? 232.vs : 80.vs,
      ],
    );
  }
}
