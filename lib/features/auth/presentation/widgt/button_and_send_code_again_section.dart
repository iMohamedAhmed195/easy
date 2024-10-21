import 'package:easy/core/widgets/custom_button.dart';
import 'package:flutter/gestures.dart';

import '../../../../exports.dart';

class ButtonAndSendCodeAgainSection extends StatelessWidget {
  const ButtonAndSendCodeAgainSection({super.key,required this.isForgetPassword});
  final bool isForgetPassword ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
            text: AppStrings().continueText,
            onPressed: (){
             isForgetPassword ? push(context: context, route: Routes.resetPasswordRoute) : push(context: context, route: Routes.completeProfileDataRoute);
            }
        ),
        SizedBox(height: 32.h,),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: AppStrings().didNotGetACode,
                  style: getRegularTextStyle(
                    fontSize: 12,
                    color: AppColors.gray,
                  ),
                ),
                const TextSpan(text: '  '),
                TextSpan(
                  text: AppStrings().sendAgain,
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
