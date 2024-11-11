import '../../../../exports.dart';

class ChatBubbleSection extends StatelessWidget {
  final bool isSender;
  final bool isImageMessage;
  final String messageText;
  final String? imageUrl;
  final String status;
  final String profileImageUrl;

  const ChatBubbleSection({
    super.key,
    required this.isSender,
    required this.isImageMessage,
    this.messageText = '',
    this.imageUrl,
    required this.status,
    required this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final textColor = isSender ? AppColors.white : AppColors.richCharcoal;
    return Padding(
      padding: EdgeInsets.only(bottom: 24.h),
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isSender)
            Container(
              width: 40.w,
              height: 40.h,
              margin: EdgeInsetsDirectional.only(end: 13.w),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(profileImageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          Column(
            crossAxisAlignment:
                isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Container(
                width: 230.w,
                padding: 12.allEdgeInsets,
                decoration: ShapeDecoration(
                  color: isSender
                      ? AppColors.primaryColor
                      : AppColors.backGroundGray,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    isImageMessage && imageUrl != null
                        ? Image.network(
                            imageUrl!,
                            width: 100.w,
                            height: 100.h,
                            fit: BoxFit.cover,
                          )
                        : Text(
                            messageText,
                            style: getRegularTextStyle(
                              color: textColor,
                              fontSize: 12,
                            ),
                          ),
                  ],
                ),
              ),
              if (isSender && status.isNotEmpty) ...[
                SizedBox(height: 4.h),
                Text(
                  status,
                  style: getRegularTextStyle(
                    color: AppColors.grayishBlueColor,
                    fontSize: 10,
                  ),
                ),
              ],
            ],
          ),
          if (isSender)
            Container(
              width: 40.w,
              height: 40.h,
              margin: EdgeInsets.only(left: 13.w),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(profileImageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
