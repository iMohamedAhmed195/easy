import '../../exports.dart';

class CustomEmptyWidget extends StatelessWidget {
  final String message;
  const CustomEmptyWidget({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(AppAssets().empty),
        SizedBox(height: 21.h),
        Text(
          message,
          style: getBoldTextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
