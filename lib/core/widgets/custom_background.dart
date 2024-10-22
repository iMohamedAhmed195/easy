import '../../exports.dart';

class CustomBackground extends StatelessWidget {
  final Widget child;
  final bool showPadding;
  final Color? statusBarColor;
  final bool extendBody;
  final IconData? icon;
  final String? title;
  final TextStyle? style;
  final double? iconSize;
  final bool showBack;
  Widget? drawer;
  Widget? floatingActionButton;
  final bool showSafeArea;
  final Color? backgroundColor;
  final Color? appBarBackgroundColor;
  final bool showAppbar;
  final EdgeInsetsGeometry? padding;
  final Key? scaffoldKey;
  PreferredSizeWidget? appBar;
  Widget? bottomNavigationBar;
  CustomBackground({
    required this.child,
    this.showPadding = true,
    this.iconSize,
    this.title,
    this.style,
    this.icon,
    this.bottomNavigationBar,
    this.appBar,
    this.drawer,
    this.extendBody = false,
    this.showBack = false,
    this.showAppbar = false,
    this.showSafeArea = true,
    this.backgroundColor,
    this.appBarBackgroundColor,
    this.padding,
    this.floatingActionButton,
    this.scaffoldKey,
    this.statusBarColor = AppColors.transparent,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
        statusBarBrightness:
            statusBarColor.isEqualTo(AppColors.white) ? Brightness.dark : null,
        statusBarIconBrightness: statusBarColor.isEqualTo(AppColors.white) ||
                statusBarColor.isEqualTo(AppColors.transparent)
            ? Brightness.dark
            : Brightness.light,
      ),
      child: Scaffold(
        key: scaffoldKey,
        drawer: drawer,
        bottomNavigationBar: bottomNavigationBar,
        backgroundColor: backgroundColor,
        floatingActionButton: floatingActionButton ?? const SizedBox(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        resizeToAvoidBottomInset: true,
        appBar: appBar,
        extendBody: extendBody,
        body: buildChild,
      ),
    );
  }

  Widget? get buildChild => showSafeArea.isTrueGetWidgetOrAnotherWidget(
      SafeArea(child: child), child);
}