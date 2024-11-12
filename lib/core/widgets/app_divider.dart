import '../../exports.dart';

class AppDivider extends StatelessWidget {
  final double? opacity;
  final double? width;
  final double? borderWidth;

  const AppDivider({super.key, this.opacity, this.width, this.borderWidth});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity ?? 1,
      child: Container(
        width: width?.w ?? double.infinity,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: borderWidth?.w ?? 1.w,
              strokeAlign: BorderSide.strokeAlignCenter,
              color: AppColors.borderColor2,
            ),
          ),
        ),
      ),
    );
  }
}
