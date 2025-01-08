import 'package:easy/core/widgets/custom_background.dart';
import 'package:easy/core/widgets/logo_app_bar_widget.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_cubit.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_state.dart';
import 'package:easy/features/auth/presentation/widget/footer_register_screen_section.dart';
import 'package:easy/features/auth/presentation/widget/register_field_section.dart';
import 'package:easy/features/auth/presentation/widget/welcome_section.dart';
import '../../../../exports.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                    SizedBox(height: 40.h,),
                    WelcomeSection(header: AppStrings().welcomeOnBoard, subHeader:  AppStrings().letsCreateAccount,),
                    SizedBox(height: 16.h,),
                    const RegisterFieldSection(),
                    SizedBox(height: 24.h,),
                    const FooterRegisterScreenSection()
                  ],
                ),
              ),
            )
        );
      },
    );
  }
}
