import '../../../../exports.dart';

class SelectAndManageCardSection extends StatelessWidget {
  const SelectAndManageCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppStrings.selectCard,
          style: getSemiBoldTextStyle(
            fontSize: 14,
            color: AppColors.grayishBlueColor,
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => Routes.manageCardsScreenRoute.moveTo(),
          child: Text(
            AppStrings.manageCards,
            style: getRegularTextStyle(
              fontSize: 12,
              color: AppColors.primaryColor,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
