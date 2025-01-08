import 'package:easy/core/widgets/app_divider.dart';
import 'package:easy/features/loan_repayment/presentation/widgets/payment_summary_and_total_amount_and_slider_section.dart';

import '../../../exports.dart';
import '../custom_button.dart';
import '../logo_app_bar_widget.dart';

class PaymentDoneScreen extends StatelessWidget {
  const PaymentDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: 16.ph,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const LogoAppBarWidget(
                  isPop: false,
                ),
                94.vs,
                SvgPicture.asset(AppAssets.checkMark),
                12.vs,
                Text(
                  AppStrings.paymentSuccessful,
                  style: getBoldTextStyle(),
                ),
                12.vs,
                Text(
                  AppStrings.thankYouMessage,
                  textAlign: TextAlign.center,
                  style: getRegularTextStyle(
                    color: AppColors.gray,
                  ),
                ),
                24.vs,
                const AppDivider(),
                16.vs,
                const PaymentSummaryAndTotalAmountAndSliderSection(
                  showSlider: false,
                ),
                197.vs,
                CustomButton(
                  text: AppStrings.goToHomepage,
                  onPressed: () {},
                ),
                32.vs,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
