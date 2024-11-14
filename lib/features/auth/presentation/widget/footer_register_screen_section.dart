import 'package:easy/core/widgets/custom_button.dart';
import 'package:flutter/gestures.dart';
import '../../../../exports.dart';

class FooterRegisterScreenSection extends StatelessWidget {
  const FooterRegisterScreenSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomButton(
            text: AppStrings().signUp,
            onPressed: () {
              Routes.enterOtpRoute.moveToWithArgs({
                "isForgetPassword": false,
              });
            }),
        SizedBox(
          height: 32.h,
        ),
        RichText(
            text: TextSpan(
          children: [
            TextSpan(
              text: AppStrings().alreadyHaveAnAccount,
              style: getSemiBoldTextStyle(
                fontSize: 16,
                color: AppColors.gray,
              ),
            ),
            const TextSpan(text: '  '),
            TextSpan(
              text: AppStrings().signIn,
              style: getSemiBoldTextStyle(
                fontSize: 16,
                color: AppColors.primaryColor,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, Routes.loginRoute);
                },
            ),
          ],
        )),
        SizedBox(
          height: 24.h,
        ),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: AppStrings().bySigningUpIConfirm,
                  style: getRegularTextStyle(
                    fontSize: 12,
                    color: AppColors.gray,
                  ),
                ),
                const TextSpan(text: '  '),
                TextSpan(
                  text: AppStrings().termsOfService,
                  style: getRegularTextStyle(
                    fontSize: 12,
                    color: AppColors.primaryColor,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Navigator.pushNamed(context, Routes.signUpRoute);
                    },
                ),
                const TextSpan(text: '  '),
                TextSpan(
                  text: AppStrings().and,
                  style: getRegularTextStyle(
                    fontSize: 12,
                    color: AppColors.gray,
                  ),
                ),
                const TextSpan(text: '  '),
                TextSpan(
                  text: AppStrings().privacyPolicy,
                  style: getRegularTextStyle(
                    fontSize: 12,
                    color: AppColors.primaryColor,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Navigator.pushNamed(context, Routes.signUpRoute);
                    },
                ),
              ],
            )),
      ],
    );
  }
}
