import '../../../../exports.dart';
import '../../data/models/profile_tile_model.dart';

List<ProfileTileModel> profileTileData = [
  ProfileTileModel(
    title: AppStrings.accountInformation,
    trailingIconData: AppAssets.arrowRight,
    leadingIconData: AppAssets.profileCircle,
  ),
  ProfileTileModel(
    title: AppStrings.settingAndPrivacy,
    trailingIconData: AppAssets.arrowRight,
    leadingIconData: AppAssets.settings,
  ),
  ProfileTileModel(
    title: AppStrings.chatSupport,
    trailingIconData: AppAssets.arrowRight,
    leadingIconData: AppAssets.messageText,
  ),
  ProfileTileModel(
    title: AppStrings.loansPolicy,
    trailingIconData: AppAssets.arrowRight,
    leadingIconData: AppAssets.documentText,
  ),
  ProfileTileModel(
    title: AppStrings.faqs,
    trailingIconData: AppAssets.arrowRight,
    leadingIconData: AppAssets.messageQuestion,
  ),
  ProfileTileModel(
    title: AppStrings.logout,
    leadingIconData: AppAssets.logout,
  ),
];
