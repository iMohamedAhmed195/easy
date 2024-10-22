
import 'package:easy/core/widgets/custom_text_form_field.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_cubit.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../../exports.dart';

class LoginFieldSection extends StatelessWidget {
  const LoginFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<UiAuthCubit>().loginFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
              print(number.phoneNumber);
              context.read<UiAuthCubit>().loginCountryCode = number.dialCode!;
              context.read<UiAuthCubit>().loginCountryId = number.isoCode!;
            },
            onInputValidated: (bool value) {
              print(value);
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
            textFieldController: context.read<UiAuthCubit>().loginPhoneNumberController,
            formatInput: true,
            keyboardType:
            const TextInputType.numberWithOptions(signed: true, decimal: true),
            onSaved: (PhoneNumber number) {
              print('On Saved: $number');
            },
          ),
          SizedBox(height: 16.h,),
          Text(
            AppStrings().password,
            style: getRegularTextStyle(fontSize: 12,color: AppColors.black),
          ),
          SizedBox(height: 4.h,),
          CustomTextFormField(
            hintText: '*********',
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            controller:context.read<UiAuthCubit>().loginPasswordController ,
            isPassword: true,

          )
        ],
      ),
    );
  }
}
