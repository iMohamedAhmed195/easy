import '../../../../exports.dart';
import 'logout_bottom_sheet_function.dart';
import 'profile_tile_data.dart';

class ProfileScreenListTiles extends StatelessWidget {
  const ProfileScreenListTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(profileTileData.length, (index) {
          return Column(
            children: [
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                titleTextStyle: getSemiboldTextStyle(
                  fontSize: 14,
                  color: AppColors.black,
                ),
                tileColor: AppColors.backGroundGray,
                trailing: index !=
                        profileTileData.length -
                            1 //! Check if it's not the last index
                    ? SvgDisplayer(
                        assetName: profileTileData[index].trailingIconData!,
                      )
                    : null, //! No trailing icon for the last item
                leading: SvgDisplayer(
                  assetName: profileTileData[index].leadingIconData,
                ),
                title: Text(
                  profileTileData[index].title,
                ),
                onTap: () {
                  //! TODO: Handle tap here
                  if (index == 0) {
                    Routes.accountInformationScreenRoute.moveTo();
                  }
                  if (index == 1) {
                    Routes.settingsAndPrivacyScreenRoute.moveTo();
                  }
                  if (index == 2) {
                    Routes.chatSupportRoute.moveTo();
                  }
                  if (index == 4) {
                    Routes.faqsRoute.moveTo();
                  }
                  if (index == 5) {
                    logoutBottomSheet(context);
                  }
                },
              ),
              8.vs,
            ],
          );
        }),
      ],
    );
  }
}
