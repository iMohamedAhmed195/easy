import 'package:easy/features/auth/presentation/ui_manager/ui_auth_cubit.dart';
import 'package:flutter/gestures.dart';

import '../../../../exports.dart';

class OtpHeaderChangeNumberSection extends StatelessWidget {
  const OtpHeaderChangeNumberSection({
    super.key,
    required this.isForgetPassword,
  });
  final bool isForgetPassword;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings().enterOtpCode,
          style: getBoldTextStyle(),
        ),
        SizedBox(
          height: 8.h,
        ),
        RichText(
            text: TextSpan(
          children: [
            TextSpan(
              text: isForgetPassword
                  ? '${AppStrings().enterTheFourDigits} ${context.read<UiAuthCubit>().forgetCountryCode} '
                      '${context.read<UiAuthCubit>().forgetPasswordPhoneNumberController.text}'
                  : '${AppStrings().enterTheFourDigits} ${context.read<UiAuthCubit>().registerCountryCode} '
                      '${context.read<UiAuthCubit>().registerPhoneNumberController.text}',
              style: getRegularTextStyle(
                fontSize: 14,
                color: AppColors.gray,
              ),
            ),
            const TextSpan(text: '  '),
            TextSpan(
              text: AppStrings().changeNumber,
              style: getSemiboldTextStyle(
                fontSize: 14,
                color: AppColors.primaryColor,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  isForgetPassword
                      ? push(
                          context: context, route: Routes.enterPhoneNumberRoute)
                      : push(context: context, route: Routes.registerRoute);
                },
            ),
          ],
        )),
      ],
    );
  }
}
