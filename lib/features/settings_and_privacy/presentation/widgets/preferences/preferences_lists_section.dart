import '../../../../../exports.dart';

class PreferencesListsSection<T> extends StatelessWidget {
  final List<T> itemList;
  final String Function(T) getIconPath;
  final String Function(T) getTitle;
  final void Function(T, int) onTap;

  const PreferencesListsSection({
    super.key,
    required this.itemList,
    required this.getIconPath,
    required this.getTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        itemList.length,
        (index) => Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: ListTile(
            tileColor: AppColors.backGroundGray,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            trailing: SvgDisplayer(
              assetName: AppAssets.arrowRight,
              height: 24.0.h,
              width: 24.0.w,
            ),
            leading: SvgDisplayer(
              assetName: getIconPath(itemList[index]),
              height: 24.0.h,
              width: 24.0.w,
            ),
            title: Text(
              getTitle(itemList[index]),
              style: getSemiBoldTextStyle(
                color: AppColors.richCharcoal,
                fontSize: 14,
              ),
            ),
            onTap: () => onTap(itemList[index], index),
          ),
        ),
      ),
    );
  }
}
