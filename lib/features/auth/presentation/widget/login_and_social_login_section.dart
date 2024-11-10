import 'package:easy/core/widgets/custom_button.dart';

import '../../../../exports.dart';

class LoginAndSocialLoginSection extends StatelessWidget {
  const LoginAndSocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
            text: AppStrings().signIn,
            onPressed:(){
              Routes.bottomNavigationRoute.moveTo();
            }
        ),
        SizedBox(height: 24.h,),
        Row(
          children: [
            Container(
              width: 110.w,
              height: 1.h,
              color: AppColors.gray,
            ),
            SizedBox(width: 12.w,),
            Text(
              AppStrings().orLoginWith,
              style: getSemiboldTextStyle(color: AppColors.gray,fontSize: 12),
            ),
            SizedBox(width: 12.w,),
            Container(
              width: 110.w,
              height: 1.h,
              color: AppColors.gray,
            ),
          ],
        ),
        SizedBox(height: 24.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(onTap:(){},child: buildSocialLoginButton(svgPath: AppAssets.google,)),
            SizedBox(width: 32.w,),
            GestureDetector(onTap:(){},child: buildSocialLoginButton(svgPath: AppAssets.facebook,)),
            SizedBox(width: 32.w,),
            GestureDetector(onTap:(){},child: buildSocialLoginButton(svgPath: AppAssets.apple,)),
          ],
        )
      ],
    );
  }
  Widget buildSocialLoginButton({required String svgPath}) {
    return Container(
      width: 48.w,
      height: 48.h,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.backGroundGray
      ),
      padding: EdgeInsets.all(12.r),
      child: SvgPicture.asset(svgPath),
    );
  }
}
