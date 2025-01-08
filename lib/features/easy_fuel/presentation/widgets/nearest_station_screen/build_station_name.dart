import '../../../../../exports.dart';

Widget buildStationName() {
  return Padding(
    padding: EdgeInsets.only(top: 16.h, bottom: 8.h),
    child: Text(
      AppStrings.stationName,
      style: getSemiBoldTextStyle(
        fontSize: 20,
        color: AppColors.richCharcoal,
      ),
    ).alignCenterStart(),
  );
}
