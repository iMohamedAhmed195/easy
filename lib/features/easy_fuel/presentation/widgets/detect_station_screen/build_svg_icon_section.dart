import '../../../../../exports.dart';

Widget buildSvgIconSection(String assetName) {
  return SvgDisplayer(
    assetName: assetName,
    height: 24.h,
    width: 24.w,
    fit: BoxFit.scaleDown,
  );
}