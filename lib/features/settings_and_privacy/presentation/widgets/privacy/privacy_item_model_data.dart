import '../../../../../exports.dart';
import '../../../data/privacy_item_model.dart';

List<PrivacyItemModel> privacyItemModelData = [
  PrivacyItemModel(
    title: AppStrings.pushNotifications,
    trailingIconData: SvgDisplayer(assetName: AppAssets.arrowRight),
    leadingIconData: AppAssets.pushNotification,
  ),
  PrivacyItemModel(
    title: AppStrings.faceId,
    trailingIconData: SvgDisplayer(assetName: AppAssets.arrowRight),
    leadingIconData: AppAssets.faceId,
  ),
  PrivacyItemModel(
    title: AppStrings.fingerprint,
    trailingIconData: SvgDisplayer(assetName: AppAssets.arrowRight),
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
