import '../../exports.dart';

class CustomAppBarWithBackArrowSection extends StatelessWidget {
  const CustomAppBarWithBackArrowSection(
      {super.key, required this.isPop, required this.appBarTitle});
  final bool isPop;
  final String appBarTitle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isPop
              ? Expanded(
                  child: GestureDetector(
                    onTap: () {
                      canPop(context);
                    },
                    child: SvgPicture.asset(AppAssets.arrowLeft),
                  ).alignCenterStart(),
                )
              : const SizedBox.shrink(),
          Text(
            appBarTitle,
            style: getSemiboldTextStyle(
              color: AppColors.black,
              fontSize: 16,
              height: 0,
            ),
          ),
          isPop ? const Spacer() : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
