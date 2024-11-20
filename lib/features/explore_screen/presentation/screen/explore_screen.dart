import 'package:easy/core/widgets/custom_app_bar_with_back_arrow_section.dart';
import 'package:easy/features/explore_screen/presentation/widgets/explore_screen_list_builder_section.dart';
import '../../../../exports.dart';

class ExplorePageScreen extends StatelessWidget {
  const ExplorePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarWithBackArrowSection(
          isPop: false,
          appBarTitle: "Explore",
        ),
        16.vs,
        DefaultTabController(
          length: 2,
          child: Column(
            children: [
              const TabBar(
                tabs: [
                  Tab(text: "Best Matches"),
                  Tab(text: "Most Recent"),
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
                      ExploreScreenListBuilderSection(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
