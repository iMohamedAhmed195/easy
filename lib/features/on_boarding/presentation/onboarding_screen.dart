import 'package:easy/core/widgets/custom_background.dart';
import 'package:easy/core/widgets/logo_app_bar_widget.dart';
import 'package:easy/features/on_boarding/presentation/managers/onboarding_cubit.dart';
import 'package:easy/features/on_boarding/presentation/managers/onboarding_state.dart';
import 'package:easy/features/on_boarding/presentation/widgets/buttons_next_skip.dart';
import 'package:easy/features/on_boarding/presentation/widgets/details_onboarding_section.dart';

import '../../../exports.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return CustomBackground(
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 15.h,),
                  const LogoAppBarWidget(isPop: false,),
                  SizedBox(height: 56.h,),
                  DetailsOnboardingSection(uiOnboardingCubit: context.read<OnboardingCubit>(),),
                  ButtonWithArrowBack(
                    onTapNextPage: () {
                      context.read<OnboardingCubit>().changePageIndex();
                    },
                    onTapSkipBack: () {
                      context.read<OnboardingCubit>().skipPage(index: 2);
                    },
                    isLastPage: context.read<OnboardingCubit>().isLastPage,),
                ],
              ),
            )
        );
      },
    );
  }
}



