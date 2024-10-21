import '../../exports.dart';

class CustomListView extends StatelessWidget {
  const CustomListView(
      {super.key,
      required this.itemCount,
      required this.widget,
      this.separatorWidget});
  final int itemCount;
  final Widget? Function(BuildContext context, int index) widget;
  final Widget Function(BuildContext context, int index)? separatorWidget;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        // primary: true,
        // shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsetsDirectional.only(top: 20.h,bottom: 20.h),
        itemBuilder: widget,
        separatorBuilder: separatorWidget ??
            (context, index) => Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 12.w),
                  child: CustomDivider(
                    color: AppColors.grayColor2,
                    height: 1,
                    marginBottom: 0,
                  ),
                ),
        itemCount: itemCount);
  }
}
