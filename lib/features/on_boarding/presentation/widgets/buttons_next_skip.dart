import 'package:easy/core/widgets/custom_button.dart';

import '../../../../exports.dart';

class ButtonWithArrowBack extends StatelessWidget {
  const ButtonWithArrowBack({
    super.key,
    required this.onTapSkipBack,
    required this.onTapNextPage,
    required this.isLastPage,
  });
  final Function() onTapSkipBack;
  final Function() onTapNextPage;
  final bool isLastPage;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          text:isLastPage ? AppStrings().signUp : AppStrings().next,
          onPressed:isLastPage? (){
            push(context: context, route: Routes.registerRoute);
          }: onTapNextPage,
        ),
        SizedBox(
          height: 12.h,
        ),
        CustomButton(
          backgroundColor: AppColors.transparent,
          borderColor: AppColors.transparent,
          textColor:   AppColors.primaryColor,
          text:isLastPage ? AppStrings().signIn : AppStrings().skip,
          onPressed:isLastPage? (){
            push(context: context, route: Routes.loginRoute);
          }: onTapSkipBack,
        ),
      ],
    );
  }
}
