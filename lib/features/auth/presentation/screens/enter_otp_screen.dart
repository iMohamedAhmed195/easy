import 'package:easy/core/widgets/custom_background.dart';
import 'package:easy/core/widgets/logo_app_bar_widget.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_cubit.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_state.dart';
import 'package:easy/features/auth/presentation/widget/button_and_send_code_again_section.dart';
import 'package:easy/features/auth/presentation/widget/otp_header_change_number_section.dart';
import 'package:easy/features/auth/presentation/widget/write_otp_section.dart';
import 'package:easy/features/auth/presentation/widget/write_otp_timer_section.dart';
import '../../../../exports.dart';

class EnterOtpScreen extends StatelessWidget {
  const EnterOtpScreen({super.key, required this.isForgetPassword});
  final bool isForgetPassword;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UiAuthCubit, UiAuthState>(
      builder: (context, state) {
        return CustomBackground(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15.h,
                ),
                const LogoAppBarWidget(
                  isPop: true,
                ),
                SizedBox(
                  height: 56.h,
                ),
                OtpHeaderChangeNumberSection(
                  isForgetPassword: isForgetPassword,
                ),
                SizedBox(
                  height: 32.h,
                ),
                const WriteOtpSection(),
                SizedBox(
                  height: 32.h,
                ),
                const WriteOtpTimerSection(),
                SizedBox(
                  height: 24.h,
                ),
                ButtonAndSendCodeAgainSection(
                  isForgetPassword: isForgetPassword,
                )
              ],
            ),
          ),
        ));
      },
    );
  }
}
