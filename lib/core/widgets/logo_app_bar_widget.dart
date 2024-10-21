import '../../exports.dart';

class LogoAppBarWidget extends StatelessWidget {
  const LogoAppBarWidget({super.key, required this.isPop});
  final bool isPop ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isPop ?  Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: (){
                  canPop(context);
                },
                  child: SvgPicture.asset(AppAssets().arrowLeft)
              ),
            ),
          ) : const SizedBox.shrink(),
          SizedBox(
            width: 82.w,
            height: 26.h,
            child: Image.asset(AppAssets().logo, fit: BoxFit.fill),
          ),
          isPop ?  const Spacer(): const SizedBox.shrink(),
        ],
      ),
    );
  }
}
