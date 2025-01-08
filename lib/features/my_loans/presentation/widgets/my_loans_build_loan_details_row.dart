import '../../../../exports.dart';

Widget buildLoanDetailRow(String title, String value, {Color? color}) {
  return Row(
    children: [
      Text(
        title,
        style: getRegularTextStyle(
          fontSize: 12,
          color: AppColors.grayishBlueColor,
        ),
      ),
      const Spacer(),
      Text(
        value,
        style: getSemiBoldTextStyle(
          fontSize: 12,
          color: color ?? AppColors.richCharcoal,
        ),
      ),
    ],
  );
}
