import 'package:easy/core/widgets/custom_image_provider_from_assets.dart';
import 'package:easy/features/easy_fuel/presentation/widgets/build_search_field_section.dart';
import 'package:easy/features/easy_fuel/presentation/widgets/build_top_left_back_button_section.dart';
import 'package:easy/features/easy_fuel/presentation/widgets/nearest_station_screen/nearest_station_container_section.dart';

import '../../../../../exports.dart';

class NearestStationScreenBodySection extends StatelessWidget {
  const NearestStationScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            CustomImageProviderFromAssetsAndNetwork(
              assetsImagePath: AppAssets.map,
              assetsImageHeight: 271,
            ),
          ],
        ),
        buildTopLeftButtonSection(),
        buildSearchFieldSection(context),
        const NearestStationContainerSection(),
      ],
    );
  }
}
