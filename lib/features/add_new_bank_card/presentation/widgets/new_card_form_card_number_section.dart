import '../../../../exports.dart';

class NewCardFormCardNumberSection extends StatelessWidget {
  const NewCardFormCardNumberSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.cardNumber,
          style: getRegularTextStyle(
            color: AppColors.richCharcoal,
            fontSize: 12,
          ),
        ),
        4.vs,
        AppTextFormField(
          hintText: AppStrings.cardNumberHint,
          keyboardType: TextInputType.number,
          suffixIcon: SvgDisplayer(
            assetName: AppAssets.camera,
            height: 24.h,
            width: 24.w,
            fit: BoxFit.scaleDown,
          ),
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
      ],
    );
  }
}
