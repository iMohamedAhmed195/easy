import 'package:easy/core/widgets/custom_text_form_field.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_cubit.dart';
import '../../../../exports.dart';

class PersonalInfoSection extends StatelessWidget {
  const PersonalInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings().email,
          style: getRegularTextStyle(fontSize: 12,color: AppColors.black),
        ),
        SizedBox(height: 4.h,),
        CustomTextFormField(
          hintText: '',
          keyboardType: TextInputType.text,
          obscureText: false,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          controller:context.read<UiAuthCubit>().loginPasswordController ,
          isPassword: false,

        ),
        SizedBox(height: 16.h,),
        Text(
          AppStrings().nationalID,
          style: getRegularTextStyle(fontSize: 12,color: AppColors.black),
        ),
        SizedBox(height: 4.h,),
        CustomTextFormField(
          hintText: '',
          keyboardType: TextInputType.number,
          obscureText: false,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          controller:context.read<UiAuthCubit>().loginPasswordController ,
          isPassword: false,

        ),
        SizedBox(height: 16.h,),
        Text(
          AppStrings().employmentState,
          style: getRegularTextStyle(fontSize: 12,color: AppColors.black),
        ),
        SizedBox(height: 4.h,),
        CustomTextFormField(
          hintText: '',
          keyboardType: TextInputType.text,
          obscureText: false,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          controller:context.read<UiAuthCubit>().loginPasswordController ,
          isPassword: false,

        ),
        SizedBox(height: 16.h,),
        Text(
          AppStrings().dateOfBirth,
          style: getRegularTextStyle(fontSize: 12,color: AppColors.black),
        ),
        SizedBox(height: 4.h,),
        CustomTextFormField(
          hintText: '',
          keyboardType: TextInputType.text,
          obscureText: false,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          controller:context.read<UiAuthCubit>().loginPasswordController ,
          isPassword: false,

        ),
        SizedBox(height: 16.h,),
        Text(
          AppStrings().workPlace,
          style: getRegularTextStyle(fontSize: 12,color: AppColors.black),
        ),
        SizedBox(height: 4.h,),
        CustomTextFormField(
          hintText: '',
          keyboardType: TextInputType.text,
          obscureText: false,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          controller:context.read<UiAuthCubit>().loginPasswordController ,
          isPassword: false,

        ),
      ],
    );
  }
}
