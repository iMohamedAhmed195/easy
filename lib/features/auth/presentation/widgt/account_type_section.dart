import 'package:easy/core/widgets/custom_text_form_field.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_cubit.dart';
import '../../../../exports.dart';

class AccountTypeSection extends StatelessWidget {
  const AccountTypeSection({super.key, required this.uiAuthCubit});
  final UiAuthCubit uiAuthCubit ;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: (){
            uiAuthCubit.changeAccountType();
          },
          child: Container(
            width: 160.w,
            height: 164.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color:uiAuthCubit.isCustomer ? AppColors.primaryColor : AppColors.borderColor2, width: 1),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 123.w,
                    height: 123.h,
                    child: Image.asset(AppAssets().customer)),
                SizedBox(height: 14.h),
                Text(
                  AppStrings().customer,
                  style: getSemiboldTextStyle(
                    fontSize: 10,
                    color:uiAuthCubit.isCustomer ? AppColors.primaryColor: AppColors.borderColor2
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(width: 8.w),
        GestureDetector(
          onTap: (){
              uiAuthCubit.changeAccountType();
          },
          child: Container(
            width: 160.w,
            height: 164.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color:!uiAuthCubit.isCustomer ? AppColors.primaryColor :AppColors.borderColor2, width: 1),
            ),
            child: Column(
              children: [
                SizedBox(
                    width: 123.w,
                    height: 123.h,
                    child:Image.asset(AppAssets().provider) ),
                SizedBox(height: 14.h),
                Text(
                  AppStrings().provider,
                  style: getSemiboldTextStyle(
                      fontSize: 10,
                      color:!uiAuthCubit.isCustomer ? AppColors.primaryColor: AppColors.borderColor2
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
