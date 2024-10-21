import 'package:easy/core/widgets/custom_background.dart';
import 'package:easy/core/widgets/logo_app_bar_widget.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_cubit.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_state.dart';
import 'package:easy/features/auth/presentation/widgt/footer_login_screen_section.dart';
import 'package:easy/features/auth/presentation/widgt/login_and_social_login_section.dart';
import 'package:easy/features/auth/presentation/widgt/login_field_section.dart';
import 'package:easy/features/auth/presentation/widgt/remember_and_forget_section.dart';
import 'package:easy/features/auth/presentation/widgt/welcome_section.dart';
import '../../../../exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                WelcomeSection(header: AppStrings().welcomeBack, subHeader:  AppStrings().logInToYourAccount,),
                SizedBox(height: 24.h,),
                const LoginFieldSection(),
                SizedBox(height: 17.h,),
                RememberAndForgetSection(uiAuthCubit: context.read<UiAuthCubit>(),),
                SizedBox(height: 32.h,),
                const LoginAndSocialLoginSection(),
                SizedBox(height: 32.h,),
                const FooterLoginScreenSection()
              ],
            ),
          ),
        )
    );
  },
);
  }
}
