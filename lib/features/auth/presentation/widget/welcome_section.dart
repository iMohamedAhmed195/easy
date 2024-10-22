
import '../../../../exports.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key, required this.header, required this.subHeader});
  final String header;
  final String subHeader;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: getBoldTextStyle(),
        ),
        SizedBox(height: 8.h,),
        Text(
          subHeader,
          style: getRegularTextStyle(
            color: AppColors.gray,
          ),
        ),
      ],
    );
  }
}
