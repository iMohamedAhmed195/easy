import '../../../../exports.dart';

class ChatScreenSendAndDocumentFiledSection extends StatelessWidget {
  const ChatScreenSendAndDocumentFiledSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      decoration: ShapeDecoration(
        color: AppColors.backGroundGray,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.w, 12.h, 0.w, 12.h),
            child: Row(
              children: [
                SvgDisplayer(
                  assetName: AppAssets.chatDocument,
                ),
                8.hs,
                Text(
                  AppStrings.sendMessage,
                  style: getRegularTextStyle(
                    color: AppColors.grayishBlueColor,
                    fontSize: 14,
                    height: 0,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.w, 12.h, 12.w, 12.h),
            child: SvgDisplayer(
              assetName: AppAssets.chatSend,
            ),
          ),
        ],
      ),
    );
  }
}
