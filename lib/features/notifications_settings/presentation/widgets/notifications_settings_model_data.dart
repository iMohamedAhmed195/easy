import '../../../../exports.dart';
import '../../data/models/notifications_settings_model.dart';

final List<NotificationsSettingsToggleItem> notificationsSettingstoggleItems = [
  NotificationsSettingsToggleItem(
      text: AppStrings.paymentsReceived, isActive: false),
  NotificationsSettingsToggleItem(
      text: AppStrings.paymentConfirmation, isActive: true),
  NotificationsSettingsToggleItem(
      text: AppStrings.loanPaymentReminders, isActive: false),
  NotificationsSettingsToggleItem(
      text: AppStrings.accountChanges, isActive: true),
];
