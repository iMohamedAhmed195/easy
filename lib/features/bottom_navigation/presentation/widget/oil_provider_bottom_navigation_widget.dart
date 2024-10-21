import 'package:easy/core/models/title_icon_model.dart';
import 'package:easy/core/widgets/custome_svg_image.dart';

import '../../../../exports.dart';
import '../managers/bottom_nav_operation_cubit.dart';

class OilProviderBottomNavigationWidget extends StatelessWidget {
  OilProviderBottomNavigationWidget({super.key});

  final List<TitleIconModel> customerNavBar = [
    TitleIconModel(title: AppStrings().home, iconDisabled: AppAssets().home, iconActive: AppAssets().homeActive),
    TitleIconModel(title: AppStrings().wallet, iconDisabled: AppAssets().wallet, iconActive: AppAssets().walletActive),
    TitleIconModel(title: AppStrings().loans, iconDisabled: AppAssets().loans, iconActive: AppAssets().loansActive),
    TitleIconModel(title: AppStrings().profile, iconDisabled: AppAssets().profile, iconActive: AppAssets().profileActive),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedLabelStyle: getBoldTextStyle(fontSize: 10, height: 1.7, color: AppColors.primaryColor),
        selectedIconTheme: const IconThemeData(color: AppColors.primaryColor),
        unselectedLabelStyle: getBoldTextStyle(fontSize: 10, color: AppColors.gray),
        selectedItemColor: AppColors.primaryColor,
        backgroundColor: AppColors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: context.read<BottomNavOperationCubit>().index,
        onTap: (index) {
          context.read<BottomNavOperationCubit>().changIndex(index);
        },
        items: List.generate(
            customerNavBar.length,
            (index) => BottomNavigationBarItem(
                  icon: context.read<BottomNavOperationCubit>().index == index ?
                  CustomSVGImage(asset: customerNavBar[index].iconActive) :
                  CustomSVGImage(
                    asset: customerNavBar[index].iconDisabled,
                  ),
                  label: customerNavBar[index].title,
                )));
  }
}
