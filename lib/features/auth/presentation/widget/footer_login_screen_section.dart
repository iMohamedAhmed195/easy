import 'package:flutter/gestures.dart';
import '../../../../exports.dart';

class FooterLoginScreenSection extends StatelessWidget {
  const FooterLoginScreenSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
            text: TextSpan(
          children: [
            TextSpan(
              text: AppStrings().doNotHaveAnAccount,
              style: getSemiboldTextStyle(
                fontSize: 16,
                color: AppColors.gray,
              ),
            ),
            const TextSpan(text: '  '),
            TextSpan(
              text: AppStrings().signUp,
              style: getSemiboldTextStyle(
                fontSize: 16,
                color: AppColors.primaryColor,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, Routes.registerRoute);
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
