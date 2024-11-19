import '../../../../../core/widgets/custom_image_provider_from_assets.dart';
import '../../../../../exports.dart';
import '../build_search_field_section.dart';
import '../build_top_left_back_button_section.dart';
import 'build_add_and_minus_section.dart';
import 'build_detect_contatiner_section.dart';
import '../build_gps_section.dart';

class DetectStationScreenBodySection extends StatelessWidget {
  const DetectStationScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            CustomImageProviderFromAssetsAndNetwork(
              assetsImagePath: AppAssets.map,
              assetsImageHeight: 800,
            ),
          ],
        ),
        buildTopLeftButtonSection(),
        buildSearchFieldSection(context),
        buildAddAndMinusSection(),
        buildGpsSection(115),
        buildDetectStation(),
      ],
    );
  }
}
