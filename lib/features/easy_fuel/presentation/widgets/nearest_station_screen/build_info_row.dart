  import '../../../../../exports.dart';

Widget buildInfoRow(String assetName, String text, {Color? color}) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          SvgDisplayer(
            assetName: assetName,
            height: 24.h,
            width: 24.w,
          ),
          8.hs,
          Flexible(
            child: Text(
              text,
              style: getRegularTextStyle(
                fontSize: 16,
                color: color ?? AppColors.grayishBlueColor,
              ),
            ),
          ),
        ],
      ),
    );
  }