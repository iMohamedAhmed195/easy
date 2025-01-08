import '../../../../../exports.dart';

Widget buildInfoRowSection(String assetName, String text) {
  return Row(
    children: [
      SvgDisplayer(
        assetName: assetName,
        height: 48.h,
        width: 48.w,
      ),
      9.hs,
      Flexible(
        child: Text(
          text,
          style: getRegularTextStyle(
            fontSize: 14,
            color: AppColors.richCharcoal,
          ),
        ),
      ),
    ],
  );
}
