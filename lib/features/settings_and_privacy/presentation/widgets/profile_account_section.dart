import 'package:easy/core/helpers/align_extension.dart';

import '../../../../exports.dart';
import 'settings_and_privacy_item_model_data.dart';
import 'profile_lists_section.dart';

class ProfileAccountSection extends StatelessWidget {
  const ProfileAccountSection({super.key});

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
        ProfileListsSection(
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
