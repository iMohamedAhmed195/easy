import '../../../../../exports.dart';

Widget buildExploreLoanContainerActionButtons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      AppTextButton(
        borderRadius: 5,
        buttonWidth: 148,
        buttonHeight: 40,
        buttonText: AppStrings.acceptButton,
        textStyle: getSemiBoldTextStyle(
          color: AppColors.white,
          fontSize: 14,
        ),
        onPressed: () {},
      ),
      AppTextButton(
        borderColor: AppColors.red,
        backgroundColor: AppColors.transparent,
        borderRadius: 5,
        buttonWidth: 148,
        buttonHeight: 40,
        buttonText: AppStrings.rejectButton,
        textStyle: getSemiBoldTextStyle(
          color: AppColors.red,
          fontSize: 14,
        ),
        onPressed: () {},
      ),
    ],
  );
}
