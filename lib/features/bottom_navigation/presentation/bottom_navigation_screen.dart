// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:easy/core/widgets/custom_background.dart';
import 'package:easy/features/bottom_navigation/presentation/widget/oil_provider_bottom_navigation_widget.dart';
import 'package:easy/features/home/presentation/customer_home_page_screen.dart';
import '../../../exports.dart';
import '../../profile/presentation/screens/profile_screen.dart';
import 'managers/bottom_nav_operation_cubit.dart';

class BottomNavigationScreens extends StatelessWidget {
  BottomNavigationScreens({super.key});

  final List<Widget> currentWidgets = [
    const CustomerHomePageScreen(),
    const CustomerHomePageScreen(),
    const CustomerHomePageScreen(),
    const CustomerHomePageScreen(),
    const ProfileScreen(),
  ];

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        context.read<BottomNavOperationCubit>().changIndex(0);
      },
      child: BlocBuilder<BottomNavOperationCubit, int>(
        builder: (context, state) {
          return CustomBackground(
            scaffoldKey: scaffoldKey,
            child: _getScreen(state),
            backgroundColor: AppColors.white,
            bottomNavigationBar: OilProviderBottomNavigationWidget(),
            floatingActionButton: FloatingActionButton(
              backgroundColor: AppColors.primaryColor,
              shape: const CircleBorder(),
              child: SvgDisplayer(
                assetName: AppAssets().qrCode,
                svgIconColor: AppColors.white,
              ),
              onPressed: () {},
            ),
          );
        },
      ),
    );
  }

  _getScreen(int index) => index == 5
      ? currentWidgets[index]
      : SingleChildScrollView(child: currentWidgets[index]);
}
