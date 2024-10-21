import 'package:easy/features/auth/presentation/ui_manager/ui_auth_cubit.dart';

import '../../../../exports.dart';

class RememberAndForgetSection extends StatelessWidget {
  const RememberAndForgetSection({super.key, required this.uiAuthCubit});
  final UiAuthCubit uiAuthCubit ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            context.read<UiAuthCubit>().changeRememberMe();
          },
          child: Row(
            children: [
              Container(
                height: 14.h,
                width: 14.w,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    border: Border.all(
                      color: AppColors.primaryColor,
                    ),
                    color:uiAuthCubit.isRemember ? AppColors.primaryColor : AppColors.transparent
                ),
                child: const Icon(
                  Icons.check,
                  color: AppColors.white,
                  size: 10,
                ),
              ),
              SizedBox(width: 4.w,),
              Text(
                AppStrings().rememberMe,
                style: getRegularTextStyle(fontSize: 12, color: AppColors.black),
              ),
            ],
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: (){
            push(context: context, route: Routes.enterPhoneNumberRoute);
          },
          child: Text(
            AppStrings().forgetPassword,
            style: getSemiboldTextStyle(fontSize: 12, color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
