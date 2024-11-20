import '../../../../exports.dart';

Widget buildExploreLoanContainerActionButtons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      AppTextButton(
        borderRadius: 5,
        buttonWidth: 148,
        buttonHeight: 40,
        buttonText: "Accept",
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
        buttonText: "Reject",
        textStyle: getSemiBoldTextStyle(
          color: AppColors.red,
          fontSize: 14,
        ),
        onPressed: () {},
      ),
    ],
  );
}
