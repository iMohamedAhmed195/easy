import '../../../../../exports.dart';

class PersonalInformationTabEmailSection extends StatelessWidget {
  const PersonalInformationTabEmailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
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
          hintText: "AhmedAdel@gmail.com",
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
