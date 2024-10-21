
import 'package:easy/core/widgets/logo_app_bar_widget.dart';

import '../../../../exports.dart';

class HeaderSelectLangSection extends StatelessWidget {
  const HeaderSelectLangSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8.h,),
        const LogoAppBarWidget(isPop: false,),
        SizedBox(height: 32.h,),
        Text(
          AppStrings().selectPreferredLanguage,
          style: getBoldTextStyle(),
        ),
        SizedBox(height: 24.h,),
      ],
    );
  }
}
