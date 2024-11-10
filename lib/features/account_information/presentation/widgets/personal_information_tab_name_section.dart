import '../../../../core/widgets/text_form_field.dart';
import '../../../../exports.dart';

class PersonalInformationTabNameSection extends StatelessWidget {
  const PersonalInformationTabNameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Full Name",
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
              hintText: "Ahmed",
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Last Name",
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
              hintText: "Adel",
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
      ],
    );
  }
}
