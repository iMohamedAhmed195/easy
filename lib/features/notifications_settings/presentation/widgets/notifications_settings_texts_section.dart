import '../../../../exports.dart';

class NotificationsSettingsTextsSection extends StatelessWidget {
  const NotificationsSettingsTextsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.manageYourNotifications,
          style: getSemiBoldTextStyle(
            color: AppColors.richCharcoal,
            fontSize: 14,
          ),
        ).alignCenterStart(),
        4.vs,
        Text(
          AppStrings.stayInformedMessage,
          style: getRegularTextStyle(
            color: AppColors.grayishBlueColor,
            fontSize: 14,
          ),
        ).alignCenterStart(),
      ],
    );
  }
}
