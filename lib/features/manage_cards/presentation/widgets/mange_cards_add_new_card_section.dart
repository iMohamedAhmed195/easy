import 'package:dotted_border/dotted_border.dart';

import '../../../../exports.dart';

class MangeCardsAddNewCardSection extends StatelessWidget {
  const MangeCardsAddNewCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: AppColors.primaryColor,
      borderType: BorderType.RRect,
      dashPattern: [7.r, 7.r, 7.r, 7.r],
      radius: Radius.circular(10.r),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.w, 8.h, 0.w, 8.h),
        child: Row(
          children: [
            SvgDisplayer(
              assetName: AppAssets.bankCard,
              width: 4.w,
              height: 40.h,
            ),
            8.hs,
            GestureDetector(
              onTap: () {},
              child: Text(
                AppStrings.addNewBankCard,
                style: getSemiBoldTextStyle(
                  fontSize: 14,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
