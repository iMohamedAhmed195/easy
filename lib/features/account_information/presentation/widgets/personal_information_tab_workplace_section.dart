import '../../../../exports.dart';

class PersonalInformationTabWorkplaceSection extends StatelessWidget {
  const PersonalInformationTabWorkplaceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Workplace",
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
          enabledBorderSideColor: AppColors.mediumGray,
          focusdBorderColor: AppColors.mediumGray,
          height: 46,
          hintText: "Company Name",
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
    );
  }
}
