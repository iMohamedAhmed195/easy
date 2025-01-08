import '../../../../../exports.dart';

class PersonalInformationTabNameSection extends StatelessWidget {
  const PersonalInformationTabNameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.fullNameLabel,
                style: getRegularTextStyle(
                  color: AppColors.black,
                  fontSize: 12,
                  fontFamily: FontFamilies.openSans,
                ),
              ),
              4.vs,
              AppTextFormField(
                contentPadding: 16.ph + 12.pv,
                radius: 4,
                fillColor: AppColors.grayColor2,
                enabledBorderSideColor: AppColors.mediumGray,
                focusdBorderColor: AppColors.mediumGray,
                height: 46,
                width: 160,
                hintText: AppStrings.hintFirstName,
                enabledBorderSideWidth: 1.4.w,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.r),
                  borderSide: BorderSide(
                    color: AppColors.mediumGray,
                    width: 1.4.w,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.lastNameLabel,
                style: getRegularTextStyle(
                  color: AppColors.black,
                  fontSize: 12,
                  fontFamily: FontFamilies.openSans,
                ),
              ),
              4.vs,
              AppTextFormField(
                contentPadding: 16.ph + 12.pv,
                radius: 4,
                fillColor: AppColors.grayColor2,
                enabledBorderSideColor: AppColors.mediumGray,
                enabledBorderSideWidth: 1.4.w,
                focusdBorderColor: AppColors.mediumGray,
                height: 46,
                width: 160,
                hintText: AppStrings.hintLastName,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.r),
                  borderSide: BorderSide(
                    color: AppColors.mediumGray,
                    width: 1.4.w,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
