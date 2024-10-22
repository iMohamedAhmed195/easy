import 'package:easy/core/widgets/custom_button.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_cubit.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_state.dart';

import '../../../../exports.dart';

class ChooseServiceBottomSheet extends StatelessWidget {
  const ChooseServiceBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UiAuthCubit, UiAuthState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          height: 324.h,
          child: Column(
            children: [
              SizedBox(height: 8.h),
              Container(
                height: 4.h,
                width: 72.w,
                decoration: BoxDecoration(
                  color: AppColors.gray,
                  borderRadius: BorderRadius.circular(78.r),
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                AppStrings().chooseService,
                style: getBoldTextStyle(fontSize: 16, color: AppColors.black),
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.read<UiAuthCubit>().toggleServiceType('money');
                    },
                    child: Container(
                      width: 160.w,
                      height: 164.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: context
                                  .read<UiAuthCubit>()
                                  .isServiceSelected('money')
                              ? AppColors.primaryColor
                              : AppColors.borderColor2,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 123.w,
                            height: 123.h,
                            child: SvgPicture.asset(AppAssets().money),
                          ),
                          SizedBox(height: 14.h),
                          Text(
                            AppStrings().money,
                            style: getSemiboldTextStyle(
                              fontSize: 10,
                              color: context
                                      .read<UiAuthCubit>()
                                      .isServiceSelected('money')
                                  ? AppColors.primaryColor
                                  : AppColors.borderColor2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  GestureDetector(
                    onTap: () {
                      context.read<UiAuthCubit>().toggleServiceType('provider');
                    },
                    child: Container(
                      width: 160.w,
                      height: 164.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: context
                                  .read<UiAuthCubit>()
                                  .isServiceSelected('provider')
                              ? AppColors.primaryColor
                              : AppColors.borderColor2,
                          width: 1.w,
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 123.w,
                            height: 123.h,
                            child: SvgPicture.asset(AppAssets().oil),
                          ),
                          SizedBox(height: 14.h),
                          Text(
                            AppStrings().provider,
                            style: getSemiboldTextStyle(
                              fontSize: 10,
                              color: context
                                      .read<UiAuthCubit>()
                                      .isServiceSelected('provider')
                                  ? AppColors.primaryColor
                                  : AppColors.borderColor2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: CustomButton(
                  text: AppStrings().submit,
                  onPressed: () {
                    if (context
                        .read<UiAuthCubit>()
                        .selectedServices
                        .isNotEmpty) {
                      Routes.awesomeSuccessRoute.moveToWithArgs({
                        "header": AppStrings().congratulations,
                        "subHeader": AppStrings().accountCreated,
                        "buttonText": AppStrings().proceed,
                        "onPressed": () {
                          Routes.bottomNavigationRoute.moveTo();
                        },
                      });
                    } else {
                      //! Here We May Show an error message or dialog to avoid empty selection ...
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
