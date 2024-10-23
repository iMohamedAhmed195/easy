import '../../../../exports.dart';
import '../../data/models/profile_tile_model.dart';

List<ProfileTileModel> profileTileData = [
  ProfileTileModel(
      title: AppStrings.accountInformation,
      trailingIconData: SvgImages.arrowRight,
      leadingIconData: SvgImages.profileCircle),
  ProfileTileModel(
      title: AppStrings.settingAndPrivacy,
      trailingIconData: SvgImages.arrowRight,
      leadingIconData: SvgImages.settings),
  ProfileTileModel(
      title: AppStrings.chatSupport,
      trailingIconData: SvgImages.arrowRight,
      leadingIconData: SvgImages.messageText),
  ProfileTileModel(
    title: AppStrings.loansPolicy,
    trailingIconData: SvgImages.arrowRight,
    leadingIconData: SvgImages.documentText,
  ),
  ProfileTileModel(
    title: AppStrings.faqs,
    trailingIconData: SvgImages.arrowRight,
    leadingIconData: SvgImages.messageQuestion,
  ),
  ProfileTileModel(
    title: AppStrings.logout,
    leadingIconData: SvgImages.logout,
  ),
];
