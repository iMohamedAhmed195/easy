import 'package:easy/features/select_language/presentation/manager/select_language_cubit.dart';

import '../../../../exports.dart';

class ChooseLanguageSection extends StatelessWidget {
  const ChooseLanguageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
            onTap: () {
              context.read<SelectLanguageCubit>().changeLanguage();
            },
            child: Container(
              width: 160.w,
              height: 153.h,
              decoration: BoxDecoration(
                color: AppColors.backGroundGray,
                border: Border.all(
                    color: !context.read<SelectLanguageCubit>().isEnglish
                        ? AppColors.primaryColor
                        : AppColors.backGroundGray,
                    width: 1.w),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    width: 70.w,
                    height: 70.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      AppAssets.saudi,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    AppStrings().arabic,
                    style: getSemiBoldTextStyle(),
                  ),
                ],
              ),
            )),
        SizedBox(
          width: 8.w,
        ),
        GestureDetector(
            onTap: () {
              context.read<SelectLanguageCubit>().changeLanguage();
            },
            child: Container(
              width: 160.w,
              height: 153.h,
              decoration: BoxDecoration(
                color: AppColors.backGroundGray,
                border: Border.all(
                    color: context.read<SelectLanguageCubit>().isEnglish
                        ? AppColors.primaryColor
                        : AppColors.backGroundGray,
                    width: 1.w),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    width: 70.w,
                    height: 70.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      AppAssets.america,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    AppStrings().english,
                    style: getSemiBoldTextStyle(),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
