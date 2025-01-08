import '../../../../../core/widgets/custom_app_bar_with_back_arrow_section.dart';
import '../../../../../exports.dart';
import '../notifications_container_item_section.dart';

class NotificationsBodySection extends StatelessWidget {
  //! TODO: "I haven't refactored this class further yet, as I'm waiting to
  //!understand how the logic (filter) will be implemented."
  const NotificationsBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarWithBackArrowSection(
          isPop: true,
          appBarTitle: AppStrings.notifications,
        ),
        25.vs,
        Text(
          AppStrings.todayText,
          style: getSemiBoldTextStyle(
            color: AppColors.richCharcoal,
            fontSize: 12,
          ),
        ).alignCenterStart(),
        8.vs,
        NotificationsContainerItem(
          title: AppStrings.loanRepaymentWarningTitle,
          description: AppStrings.loanRepaymentWarningDescription,
          timestamp: AppStrings.loanRepaymentWarningTimestamp,
          showPayButton: true,
          onButtonPressed: () {},
          notificationIcon: AppAssets.warning,
        ),
        16.vs,
        NotificationsContainerItem(
          title: AppStrings.loanApplicationViewsTitle,
          description: AppStrings.loanApplicationViewsDescription,
          timestamp: AppStrings.loanApplicationViewsTimestamp,
          showPayButton: false,
          notificationIcon: AppAssets.views,
        ),
        16.vs,
        Text(
          AppStrings.yesterdayText,
          style: getSemiBoldTextStyle(
            color: AppColors.richCharcoal,
            fontSize: 12,
          ),
        ).alignCenterStart(),
        8.vs,
        NotificationsContainerItem(
          title: AppStrings.newBankCardTitle,
          description: AppStrings.newBankCardDescription,
          timestamp: AppStrings.newBankCardTimestamp,
          showPayButton: false,
          notificationIcon: AppAssets.bankCard,
        ),
        16.vs,
        NotificationsContainerItem(
          title: AppStrings.paymentSuccessfulTitle,
          description: AppStrings.paymentSuccessfulDescription,
          timestamp: AppStrings.paymentSuccessfulTimestamp,
          showPayButton: false,
          notificationIcon: AppAssets.successful,
        ),
        16.vs,
      ],
    );
  }
}
