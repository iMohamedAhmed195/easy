import 'package:easy/core/widgets/custom_background.dart';
import 'package:easy/core/widgets/custom_button.dart';
import 'package:easy/core/widgets/logo_app_bar_widget.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_cubit.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_state.dart';
import 'package:easy/features/auth/presentation/widget/reset_password_field_section.dart';
import 'package:easy/features/auth/presentation/widget/welcome_section.dart';

import '../../../../exports.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UiAuthCubit, UiAuthState>(
      builder: (context, state) {
        return CustomBackground(
            child: SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.w),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15.h,),
                    const LogoAppBarWidget(isPop: true,),
                    SizedBox(height: 56.h,),
                    WelcomeSection(header: AppStrings().resetPassword, subHeader:  AppStrings().passwordMustBeDifferent,),
                    SizedBox(height: 24.h,),
                    const ResetPasswordFieldSection(),
                    SizedBox(height: 26.h,),
                    CustomButton(
                        text: AppStrings().resetPassword,
                        onPressed: (){
                          Routes.awesomeSuccessRoute.moveToWithArgs(
                            {
                              "header": AppStrings().awesome,
                              "subHeader": AppStrings().passwordResetSuccess,
                              "buttonText": AppStrings().signIn,
                              "onPressed": (){
                                Routes.bottomNavigationRoute.moveTo();
                              }
                            }
                          );
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
