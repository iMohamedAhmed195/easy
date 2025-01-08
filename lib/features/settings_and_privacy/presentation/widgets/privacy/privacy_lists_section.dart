import '../../../../../exports.dart';
import 'close_account_bottom_sheet_function.dart';
import 'privacy_item_model_data.dart';

class PrivacyListsSection extends StatelessWidget {
  const PrivacyListsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        privacyItemModelData.length,
        (index) {
          return Column(
            children: [
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                titleTextStyle: getSemiBoldTextStyle(
                  fontSize: 14,
                  color: AppColors.black,
                ),
                tileColor: AppColors.backGroundGray,
                trailing: index !=
                        privacyItemModelData.length -
                            1 //! Check if it's not the last index
                    ? privacyItemModelData[index].trailingIconData!
                    : null, //! No trailing icon for the last item
                leading: SvgDisplayer(
                  assetName: privacyItemModelData[index].leadingIconData,
                ),
                title: Text(
                  privacyItemModelData[index].title,
                ),
                onTap: () {
                  if (index == 2) Routes.changePasswordScreenRoute.moveTo();
                  if (index == 3) Routes.changePinScreenRoute.moveTo();
                  if (index == 4) closeAccountBottomSheet(context);
                  //! TODO: Handle tap here
                },
              ),
              8.vs,
            ],
          );
        },
      ),
    );
  }
}
