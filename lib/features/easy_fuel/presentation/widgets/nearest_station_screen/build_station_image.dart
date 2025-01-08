  import '../../../../../core/widgets/custom_image_provider_from_assets.dart';
import '../../../../../exports.dart';

Widget buildStationImage() {
    return CustomImageProviderFromAssetsAndNetwork(
      assetsImagePath: AppAssets.station,
      assetsImageHeight: 162,
      assetsImageWidth: 328,
    );
  }