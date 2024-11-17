import '../../../../exports.dart';

class AddNewCardFormExpirationDateAndCvvSection extends StatelessWidget {
  const AddNewCardFormExpirationDateAndCvvSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.expirationDate,
                  style: getRegularTextStyle(
                    fontSize: 12,
                    color: AppColors.richCharcoal,
                  ),
                ),
                8.vs,
                SizedBox(
                  height: 46.h,
                  width: 160.w,
                  child: AppTextFormField(
                    hintText: AppStrings.expirationDateHint,
                    keyboardType: TextInputType.datetime,
                    contentPadding: 12.pv + 16.ph,
                    hintStyle: getRegularTextStyle(
                      color: AppColors.darkGray,
                      fontSize: 16,
                    ),
                    fillColor: AppColors.transparent,
                    focusdBorderColor: AppColors.borderColor2,
                    enabledBorderSideColor: AppColors.borderColor2,
                    radius: 4,
                    enabledBorderSideWidth: 1.4,
                  ),
                ),
              ],
            ),
            8.hs,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.cvv,
                  style: getRegularTextStyle(
                    fontSize: 12,
                    color: AppColors.richCharcoal,
                  ),
                ),
                8.vs,
                SizedBox(
                  height: 46.h,
                  width: 160.w,
                  child: AppTextFormField(
                    hintText: AppStrings.cvvHint,
                    keyboardType: TextInputType.number,
                    contentPadding: 12.pv + 16.ph,
                    hintStyle: getRegularTextStyle(
                      color: AppColors.darkGray,
                      fontSize: 16,
                    ),
                    fillColor: AppColors.transparent,
                    focusdBorderColor: AppColors.borderColor2,
                    enabledBorderSideColor: AppColors.borderColor2,
                    radius: 4,
                    enabledBorderSideWidth: 1.4,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
