import 'dart:developer';

import 'package:easy/core/widgets/custom_background.dart';
import 'package:easy/core/widgets/custom_button.dart';
import 'package:easy/core/widgets/logo_app_bar_widget.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_cubit.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_state.dart';
import 'package:easy/features/auth/presentation/widget/welcome_section.dart';
import 'package:flutter/foundation.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../../exports.dart';

class EnterPhoneScreen extends StatelessWidget {
  const EnterPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UiAuthCubit, UiAuthState>(
      builder: (context, state) {
        return CustomBackground(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15.h,),
                    const LogoAppBarWidget(isPop: true,),
                    SizedBox(height: 56.h,),
                    WelcomeSection(header: AppStrings().forgetPassword,
                      subHeader: AppStrings().enterThePhoneNumber,),
                    SizedBox(height: 24.h,),
                    Text(
                      AppStrings().phoneNumber,
                      style: getRegularTextStyle(fontSize: 12),
                    ),
                    SizedBox(height: 4.h,),
                    InternationalPhoneNumberInput(
                      hintText: '',
                      inputDecoration:InputDecoration(
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.r),
                          borderSide:  BorderSide(color: AppColors.borderColor2,width: 1.4),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.r),
                          borderSide:  BorderSide(color: AppColors.borderColor2,width: 1.4),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.r),
                          borderSide: const BorderSide(color: AppColors.primaryColor,width: 1.4),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.r),
                          borderSide: const BorderSide(color: AppColors.red,width: 1.4),
                        ),
                      ),
                      inputBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        borderSide:  BorderSide(color: AppColors.borderColor2,width: 1.4),
                      ),
                      onInputChanged: (PhoneNumber number) {
                        if (kDebugMode) {
                          log(number.phoneNumber.toString());
                        }
                        context.read<UiAuthCubit>().forgetCountryCode = number.dialCode!;
                        context.read<UiAuthCubit>().forgetCountryId = number.isoCode!;
                      },
                      onInputValidated: (bool value) {
                        if (kDebugMode) {
                          log(value.toString());
                        }
                      },
                      selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.DIALOG,
                        useBottomSheetSafeArea: true,
                        leadingPadding:10,
                        trailingSpace:false,
                        setSelectorButtonAsPrefixIcon: true,

                      ),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.onUserInteraction,
                      selectorTextStyle: getRegularTextStyle(fontSize: 16,),
                      initialValue: PhoneNumber(),
                      textFieldController: context.read<UiAuthCubit>().forgetPasswordPhoneNumberController,
                      formatInput: true,
                      keyboardType:
                      const TextInputType.numberWithOptions(signed: true, decimal: true),
                      onSaved: (PhoneNumber number) {
                        if (kDebugMode) {
                          log('On Saved: $number');
                        }
                      },
                    ),
                    SizedBox(height: 24.h,),
                    CustomButton(
                        text: AppStrings().sendOTP,
                        onPressed:(){
                          Routes.enterOtpRoute.moveToWithArgs({
                            "isForgetPassword": true,
                          });
                        }
                    )
                  ],
                ),
              ),
            )
        );
      },
    );
  }
}