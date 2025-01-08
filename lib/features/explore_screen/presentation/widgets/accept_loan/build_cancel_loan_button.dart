import '../../../../../exports.dart';

Widget buildCancelLoanButton() {
  return AppTextButton(
    borderRadius: 8,
    backgroundColor: AppColors.transparent,
    borderColor: AppColors.primaryColor,
    buttonText: AppStrings.cancel,
    textStyle: getSemiBoldTextStyle(
      color: AppColors.primaryColor,
      fontSize: 16,
    ),
    onPressed: () {},
  );
}
