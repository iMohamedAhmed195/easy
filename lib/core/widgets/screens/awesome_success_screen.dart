import 'package:easy/core/widgets/custom_background.dart';
import 'package:easy/core/widgets/custom_button.dart';
import 'package:easy/core/widgets/logo_app_bar_widget.dart';

import '../../../exports.dart';

class AwesomeSuccessScreen extends StatelessWidget {
  const AwesomeSuccessScreen({super.key, required this.header, required this.subHeader, required this.buttonText, required this.onPressed});
  final String header;
  final String subHeader;
  final String buttonText;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const LogoAppBarWidget(isPop: false,),
                buildSuccessContent(),
                SizedBox(height: 241.h,),
                CustomButton(
                    text: buttonText,
                    onPressed:onPressed
                )
              ],
            ),
          ),
        )
    );
  }
  Widget buildSuccessContent() {
    return Column(
      children: [
        SizedBox(height: 185.h,),
        SvgPicture.asset(AppAssets.checkMark),
        SizedBox(height: 12.h,),
        Text(
          header,
          style: getBoldTextStyle(),
        ),
        SizedBox(height: 12.h,),
        Text(
          subHeader,
          textAlign: TextAlign.center,
          style: getRegularTextStyle(
            color: AppColors.gray,
          ),
        ),
      ],
    );
  }
}