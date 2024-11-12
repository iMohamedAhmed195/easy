import '../../../../../core/widgets/animated_toggle_switch_section.dart';
import '../../../../../exports.dart';
import '../../../data/privacy_item_model.dart';

List<PrivacyItemModel> privacyItemModelData = [
  PrivacyItemModel(
    title: AppStrings.pushNotifications,
    trailingIconData: AnimatedToggleSwitchSection(
      isActive: true,
      onToggle: (p0) => {},
    ),
    leadingIconData: AppAssets.pushNotification,
  ),
  PrivacyItemModel(
    title: AppStrings.faceId,
    trailingIconData: AnimatedToggleSwitchSection(
      isActive: true,
      onToggle: (p0) => {},
    ),
    leadingIconData: AppAssets.faceId,
  ),
  PrivacyItemModel(
    title: AppStrings.fingerprint,
    trailingIconData: AnimatedToggleSwitchSection(
      isActive: false,
      onToggle: (p0) => {},
    ),
    leadingIconData: AppAssets.fingerprint,
  ),
  PrivacyItemModel(
    title: AppStrings.changePassword,
    trailingIconData: SvgDisplayer(assetName: AppAssets.arrowRight),
    leadingIconData: AppAssets.changePasssword,
  ),
  PrivacyItemModel(
    title: AppStrings.changePin,
    trailingIconData: SvgDisplayer(assetName: AppAssets.arrowRight),
    leadingIconData: AppAssets.dialpad,
  ),
  PrivacyItemModel(
    title: AppStrings.closeYourAccount,
    leadingIconData: AppAssets.trash,
  ),
];
