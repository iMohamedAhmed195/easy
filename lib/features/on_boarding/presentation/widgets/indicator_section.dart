import 'package:easy/features/on_boarding/presentation/managers/onboarding_cubit.dart';

import '../../../../exports.dart';

class IndicatorSection extends StatelessWidget {
  const IndicatorSection({super.key, required this.onBoardingItemsLength});
  final int onBoardingItemsLength;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        onBoardingItemsLength ,
            (indicatorIndex) {
          return Row(
            children: [
              context.read<OnboardingCubit>().indicatorIndex == indicatorIndex
                  ? Container(
                width: 16.w,
                height: 16.h,
                padding: EdgeInsets.all(3.r),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.transparent,
                  border: Border.all(color: AppColors.primaryColor),
                ),
                child: CircleAvatar(
                  radius: 5.w,
                  backgroundColor: AppColors.primaryColor,
                ),
              )
                  : CircleAvatar(
                radius: 5.w,
                backgroundColor: AppColors.indicatorGray,
              ),
              SizedBox(width: 6.w),
            ],
          );
        },
      ),
    );
  }
}
