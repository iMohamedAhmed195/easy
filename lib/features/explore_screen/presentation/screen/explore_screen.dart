import 'package:easy/core/widgets/custom_app_bar_with_back_arrow_section.dart';
import 'package:easy/features/explore_screen/presentation/widgets/explore_screen_list_builder_section.dart';
import '../../../../exports.dart';
import '../widgets/filter_button_section.dart';

class ExplorePageScreen extends StatelessWidget {
  const ExplorePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const CustomAppBarWithBackArrowSection(
              isPop: false,
              appBarTitle: AppStrings.explore,
            ),
            16.vs,
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  const TabBar(
                    tabs: [
                      Tab(text: AppStrings.bestMatches),
                      Tab(text: AppStrings.mostRecent),
                    ],
                  ),
                  SizedBox(
                    height: 593.h,
                    child: Padding(
                      padding: AppConstants.kSTEPDirectionalPadding,
                      child: const TabBarView(
                        children: [
                          //! Best Matches Tab
                          ExploreScreenListBuilderSection(),
                          //! Most Recent Tab
                          ExploreScreenListBuilderSection(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 12.h,
          left: 104.w,
          right: 104.w,
          child: const FilterButtonSection(),
        ),
      ],
    );
  }
}
