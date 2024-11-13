import 'dart:developer';

import '../../../../exports.dart';
import 'language_selection_model_data.dart';

class LanguageSelectionListSection extends StatelessWidget {
  const LanguageSelectionListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        languagesSelection.length,
        (index) {
          final countryLanguage = languagesSelection[index];
          return GestureDetector(
            onTap: () => log(
                "Selected Language ID is : ${countryLanguage.countryLanguageId}"),
            child: Padding(
              padding: EdgeInsets.only(bottom: 12.h),
              child: ListTile(
                contentPadding: 16.ph,
                leading: SvgDisplayer(
                  height: 32.h,
                  width: 32.w,
                  assetName: countryLanguage.countryFlag,
                ),
                title: Text(
                  countryLanguage.countryLanguageName,
                  style: getSemiboldTextStyle(
                    color: AppColors.richCharcoal,
                    fontSize: 14,
                  ),
                ),
                tileColor: AppColors.backGroundGray,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1.2.w,
                    color: AppColors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                minVerticalPadding: 0,
              ),
            ),
          );
        },
      ),
    );
  }
}
