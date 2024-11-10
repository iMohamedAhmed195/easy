
import 'dart:developer';

import 'package:easy/features/auth/presentation/ui_manager/ui_auth_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../exports.dart';

class RegisterFieldSection extends StatelessWidget {
  const RegisterFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key:  context.read<UiAuthCubit>().registerFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width:156.w ,
                child: Column(
                  crossAxisAlignment:   CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings().firstName,
                      style: getRegularTextStyle(fontSize: 12,color: AppColors.black),
                    ),
                    SizedBox(height: 4.h,),
                    CustomTextFormField(
                      hintText: '',
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      controller:context.read<UiAuthCubit>().registerFirstNameController ,
                      isPassword: false,

                    ),
                  ],
                ),
              ),
              SizedBox(width: 16.w,),
              SizedBox(
                width:156.w ,
                child: Column(
                  crossAxisAlignment:   CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings().lastName,
                      style: getRegularTextStyle(fontSize: 12,color: AppColors.black),
                    ),
                    SizedBox(height: 4.h,),
                    CustomTextFormField(
                      hintText: '',
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      controller:context.read<UiAuthCubit>().registerLastNameController ,
                      isPassword: false,

                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h,),
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
              context.read<UiAuthCubit>().registerCountryCode = number.dialCode!;
              context.read<UiAuthCubit>().registerCountryId = number.isoCode!;
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
            textFieldController: context.read<UiAuthCubit>().registerPhoneNumberController,
            formatInput: true,
            keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
          ),
          SizedBox(height: 16.h,),
          Text(
            AppStrings().password,
            style: getRegularTextStyle(fontSize: 12,color: AppColors.black),
          ),
          SizedBox(height: 4.h,),
          CustomTextFormField(
            hintText: '*********',
            style: getRegularTextStyle(fontSize: 16,color: AppColors.darkGray),
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            controller:context.read<UiAuthCubit>().registerPasswordController ,
            isPassword: true,

          ),
          SizedBox(height: 4.h,),
          Text(
            AppStrings().useRegex,
            style: getRegularTextStyle(fontSize: 12,color: AppColors.darkGray),
          ),
          SizedBox(height: 16.h,),
          Text(
            AppStrings().confirmPassword,
            style: getRegularTextStyle(fontSize: 12,color: AppColors.black),
          ),
          SizedBox(height: 4.h,),
          CustomTextFormField(
            hintText: '*********',
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            style: getRegularTextStyle(fontSize: 16,color: AppColors.darkGray),
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            controller:context.read<UiAuthCubit>().registerConfirmPasswordController ,
            isPassword: true,

          ),
          SizedBox(height: 4.h,),
          Text(
            AppStrings().bothPasswordMustMatch,
            style: getRegularTextStyle(fontSize: 12,color: AppColors.darkGray),
          ),
        ],
      ),
    );
  }
}
