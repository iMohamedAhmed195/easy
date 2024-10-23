import 'package:easy/core/widgets/text_form_field.dart';

import '../../../../exports.dart';

class PersonalInformationTabBody extends StatelessWidget {
  //! "I didn’t complete the screen or refactor because I'll be working on another app."

  const PersonalInformationTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 16.ph,
      child: SingleChildScrollView(
        child: Column(
          children: [
            16.vs,
            Row(
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
            ),
            16.vs,
            Column(
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
            ),
            16.vs,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "National ID",
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
                  hintText: "7862 4396 8757 8322",
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
            16.vs,
            Column(
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
            ),
            16.vs,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Date of Birth",
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
                  hintText: "7862 4396 8757 8322 ",
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
            16.vs,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Employment Type",
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
                  hintText: "7862 4396 8757 8322 ",
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
          ],
        ),
      ),
    );
  }
}
