import '../../exports.dart';

class ProfileAndRelatedScreensCustomAppBarSection extends StatelessWidget {
  final double? profileCustomAppBarHorizontalPadding;
  final double? profileCustomAppBarArrowHeight;
  final double? profileCustomAppBarArrowWidth;
  final String profileCustomAppBarTextData;
  final TextStyle? profileCustomAppBarTextDataStyle;
  const ProfileAndRelatedScreensCustomAppBarSection({
    super.key,
    this.profileCustomAppBarHorizontalPadding,
    this.profileCustomAppBarArrowHeight,
    this.profileCustomAppBarArrowWidth,
    required this.profileCustomAppBarTextData,
    this.profileCustomAppBarTextDataStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgDisplayer(
              assetName: AppAssets.arrowLeft,
              height: profileCustomAppBarArrowHeight?.h ?? 24.h,
              width: profileCustomAppBarArrowWidth?.w ?? 24.w,
            ),
            115.hs,
            Expanded(
              child: Text(
                profileCustomAppBarTextData,
                style: profileCustomAppBarTextDataStyle ??
                    getSemiboldTextStyle(
                      fontSize: 16,
                      color: AppColors.black,
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
