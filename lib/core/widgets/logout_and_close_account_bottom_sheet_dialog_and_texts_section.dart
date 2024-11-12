import '../../exports.dart';

class LogoutAndCloseAccountBottomSheetDialogAndTextsSection
    extends StatelessWidget {
  final String sheetIconPath;
  final String sheetTitle;
  final String sheetWarning;

  const LogoutAndCloseAccountBottomSheetDialogAndTextsSection(
      {super.key, required this.sheetIconPath, required this.sheetTitle, required this.sheetWarning});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 4.h,
          width: 72.w,
          decoration: BoxDecoration(
            color: AppColors.lightSilver,
            borderRadius: BorderRadius.circular(78.r),
          ),
        ),
        12.vs,
        SvgDisplayer(
          assetName: sheetIconPath,
          height: 63.h,
          width: 63.w,
        ),
        16.vs,
        Text(
          sheetTitle,
          style: getBoldTextStyle(
            fontSize: 16,
            color: AppColors.black,
            fontFamily: FontFamilies.openSans,
          ),
        ),
        12.vs,
        Padding(
          padding: 22.ph,
          child: Text(
            sheetWarning,
            textAlign: TextAlign.center,
            style: getRegularTextStyle(
              color: AppColors.gray,
              fontFamily: FontFamilies.openSans,
            ),
          ),
        ),
      ],
    );
  }
}
