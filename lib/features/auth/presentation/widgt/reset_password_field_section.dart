
import 'package:easy/core/widgets/custom_text_form_field.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_cubit.dart';

import '../../../../exports.dart';

class ResetPasswordFieldSection extends StatelessWidget {
  const ResetPasswordFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key:  context.read<UiAuthCubit>().resetPasswordFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            controller:context.read<UiAuthCubit>().resetPasswordController ,
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
            controller:context.read<UiAuthCubit>().resetPasswordConfirmController ,
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
