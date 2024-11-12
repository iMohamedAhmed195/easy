import '../../../../../exports.dart';
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
                titleTextStyle: getSemiboldTextStyle(
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
