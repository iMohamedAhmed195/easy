import 'package:easy/features/on_boarding/presentation/managers/onboarding_cubit.dart';
import 'package:easy/features/on_boarding/presentation/widgets/indicator_section.dart';
import '../../../../exports.dart';

class DetailsOnboardingSection extends StatelessWidget {
  const DetailsOnboardingSection({super.key, required this.uiOnboardingCubit,  });
  final OnboardingCubit uiOnboardingCubit ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox (
          height: 479.h,
          child: PageView.builder(
            controller: context.read<OnboardingCubit>().pageController,
            itemCount: context.read<OnboardingCubit>().onBoardingItems.onBoardingItems.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 328.w,
                      height: 280.h,
                      child: SvgPicture.asset(context.read<OnboardingCubit>().onBoardingItems.onBoardingItems[index].imagePath),
                    ),
                    SizedBox(height: 24.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.0.w),
                      child: SizedBox(
                        width: 322.w,
                        height: 54.h,
                        child: Text(
                          context.read<OnboardingCubit>().onBoardingItems.onBoardingItems[index].title,
                          textAlign: TextAlign.center,
                          style: getBoldTextStyle(fontSize: 20, color: AppColors.black),
                        ),
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.0.w),
                        child: Text(
                          context.read<OnboardingCubit>().onBoardingItems.onBoardingItems[index].subTitle,
                          textAlign: TextAlign.center,
                          style: getRegularTextStyle(
                            color: AppColors.gray,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24.h),
                  ],
                ),
              );
            },
            onPageChanged: (index) {
              context.read<OnboardingCubit>().changePageIndex(index: index);
            },
          ),
        ),
        IndicatorSection(onBoardingItemsLength: uiOnboardingCubit.onBoardingItems.onBoardingItems.length),
        SizedBox(height: 45.h),
      ],
    );
  }
}
