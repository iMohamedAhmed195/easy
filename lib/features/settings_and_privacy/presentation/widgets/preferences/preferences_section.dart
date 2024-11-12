
import '../../../../../exports.dart';
import 'preferences_item_model_data.dart';
import 'preferences_lists_section.dart';

class PreferencesSection extends StatelessWidget {
  const PreferencesSection({super.key});

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
        PreferencesListsSection(
          itemList: preferencesItemList,
          getIconPath: (item) => item.iconPath,
          getTitle: (item) => item.data,
          onTap: (item, index) {
            //! Will Add more index-based navigation
            if (index == 0) Routes.notificationsSettingsScreenRoute.moveTo();
          },
        ),
      ],
    );
  }
}
