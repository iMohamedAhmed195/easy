import 'dart:developer';

import '../../../../core/widgets/animated_toggle_switch_section.dart';
import '../../../../exports.dart';
import '../../data/models/notifications_settings_model.dart';
import 'notifications_settings_model_data.dart';

class NotificationsSettingsListSection extends StatefulWidget {
  const NotificationsSettingsListSection({super.key});

  @override
  State<NotificationsSettingsListSection> createState() =>
      _NotificationsSettingsListSectionState();
}

class _NotificationsSettingsListSectionState
    extends State<NotificationsSettingsListSection> {
  void onToggle(NotificationsSettingsToggleItem item, int index) {
    setState(() {
      item.isActive = !item.isActive; //! Toggle the state
      //! Log the new state
      if (item.isActive) {
        log("${item.text} Enabled");
      } else {
        log("${item.text} Disabled");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        notificationsSettingstoggleItems.length,
        (index) => Column(
          children: [
            Container(
              width: double.infinity,
              decoration: ShapeDecoration(
                color: AppColors.backGroundGray,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0.r),
                ),
              ),
              child: ListTile(
                title: Text(
                  notificationsSettingstoggleItems[index].text,
                  style: getSemiboldTextStyle(
                    color: AppColors.richCharcoal,
                    fontSize: 14,
                    height: 0,
                  ),
                ),
                trailing: AnimatedToggleSwitchSection(
                  isActive: notificationsSettingstoggleItems[index].isActive,
                  onToggle: (value) {
                    onToggle(notificationsSettingstoggleItems[index],
                        index); //! Handle toggle state
                  },
                ),
                onTap: () => onToggle(
                  notificationsSettingstoggleItems[index],
                  index,
                ), //! Pass index
              ),
            ),
            8.vs,
          ],
        ),
      ),
    );
  }
}
