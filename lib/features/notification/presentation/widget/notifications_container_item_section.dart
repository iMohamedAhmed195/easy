import '../../../../exports.dart';

class NotificationsContainerItem extends StatelessWidget {
  final String title;
  final String description;
  final String timestamp;
  final bool showPayButton;
  final VoidCallback? onButtonPressed;
  final String notificationIcon;

  const NotificationsContainerItem({
    super.key,
    required this.title,
    required this.description,
    required this.timestamp,
    this.showPayButton = false,
    this.onButtonPressed,
    required this.notificationIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(12.w, 12.h, 25.w, 12.h),
      decoration: ShapeDecoration(
        color: AppColors.backGroundGray,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgDisplayer(
                assetName: notificationIcon,
                height: 40.h,
                width: 40.w,
              ),
              8.hs,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: getSemiBoldTextStyle(
                        color: AppColors.richCharcoal,
                        fontSize: 14,
                      ),
                    ),
                    4.vs,
                    Text(
                      description,
                      style: getRegularTextStyle(
                        color: AppColors.richCharcoal,
                        fontSize: 12,
                      ),
                    ),
                    4.vs,
                    Text(
                      timestamp,
                      style: getRegularTextStyle(
                        color: AppColors.grayishBlueColor,
                        fontSize: 12,
                      ),
                    ),
                    if (showPayButton)
                      Column(
                        children: [
                          8.vs,
                          AppTextButton(
                            borderRadius: 4,
                            buttonWidth: 67,
                            buttonHeight: 28,
                            buttonText: AppStrings.payButtonText,
                            textStyle: getSemiBoldTextStyle(
                              color: AppColors.white,
                              fontSize: 10,
                            ),
                            onPressed: onButtonPressed ?? () {},
                          ),
                        ],
                      ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
