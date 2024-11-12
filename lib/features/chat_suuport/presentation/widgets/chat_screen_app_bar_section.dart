
import '../../../../exports.dart';

class ChatScreenAppBarSection extends StatelessWidget {
  final String appBarTitle;
  const ChatScreenAppBarSection({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              canPop(context);
            },
            child: SvgPicture.asset(AppAssets.arrowLeft),
          ).alignCenterStart(),
          Center(
            child: Text(
              appBarTitle,
              style: getSemiboldTextStyle(
                color: AppColors.black,
                fontSize: 16,
                height: 0,
              ),
            ),
          ),
          SvgPicture.asset(AppAssets.dots).alignCenterEnd(),
        ],
      ),
    );
  }
}
