import 'package:easy/core/helpers/align_extension.dart';

import '../../../../exports.dart';
import 'settings_and_privacy_item_model_data.dart';
import 'settings_and_privacy_lists_section.dart';

class SettingsAndPrivacySection extends StatelessWidget {
  const SettingsAndPrivacySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.preferences,
          style: getSemiboldTextStyle(
            color: AppColors.richCharcoal,
            fontSize: 12,
          ),
        ).alignCenterStart(),
        8.vs,
        SettingsAndPrivacyListsSection(
          itemList: settingsAndPrivacyItemList,
          getIconPath: (item) => item.iconPath,
          getTitle: (item) => item.data,
          onTap: (item, index) {
            //! Will Add more index-based navigation
          },
        ),
      ],
    );
  }
}
