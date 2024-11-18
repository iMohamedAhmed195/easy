import '../../../../exports.dart';
import '../../model/manage_cards_drop_down_menu_model.dart';

List<DropdownItem> dropdownItems = [
  DropdownItem(
    name: AppStrings.setAsDefault,
    value: AppStrings.setAsDefault,
    icon: AppAssets.bankCardIcon,
  ),
  DropdownItem(
    name: AppStrings.editCard,
    value: AppStrings.editCard,
    icon: AppAssets.edit,
  ),
  DropdownItem(
    name: AppStrings.deleteCard,
    value: AppStrings.deleteCard,
    icon: AppAssets.trash,
  ),
];
