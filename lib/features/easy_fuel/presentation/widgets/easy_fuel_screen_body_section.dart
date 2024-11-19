import '../../../../core/widgets/custom_image_provider_from_assets.dart';
import '../../../../exports.dart';
import 'build_bottom_container_section.dart';
import 'build_search_dield_section.dart';
import 'build_top_left_back_button_section.dart';

class EasyFuelScreenBodySection extends StatelessWidget {
  const EasyFuelScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            CustomImageProviderFromAssetsAndNetwork(
              assetsImagePath: AppAssets.map,
              assetsImageHeight: 460,
            ),
          ],
        ),
        buildTopLeftButtonSection(),
        buildSearchFieldSection(context),
        buildBottomContainerSection(context),
      ],
    );
  }
}
