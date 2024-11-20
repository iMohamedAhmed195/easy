import '../../../../core/widgets/custom_app_bar_with_back_arrow_section.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../exports.dart';
import 'build_qr_code_scanning_instruction_text_section.dart';

class QrCodeScanningScreenBodySection extends StatelessWidget {
  const QrCodeScanningScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.richBlueColor,
            AppColors.navyBlueColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: AppConstants.kSTEPDirectionalPadding,
        child: SafeArea(
          child: ListView(
            children: [
              const CustomAppBarWithBackArrowSection(
                isPop: true,
                appBarTitle: AppStrings.qrCodeScanningTitle,
                appBarColor: AppColors.white,
              ),
              45.vs,
              buildQrCodeScanningInstructionText(
                  AppStrings.scanQrCodeToProceed, 20),
              428.vs,
              buildQrCodeScanningInstructionText(
                  AppStrings.qrCodeAutoDetectionMessage, 14),
              62.vs,
              CustomButton(
                text: AppStrings.scanQrButtonText,
                onPressed: () {
                  Routes.loanRepaymentScreenRoute.moveTo();
                },
                svgIconPath: AppAssets.scanQrCodeWhite,
                height: 48,
                borderRadius: 8,
                backgroundColor: AppColors.primaryColor,
                style: getSemiBoldTextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                  fontFamily: FontFamilies.openSans,
                ),
              ),
              32.vs,
            ],
          ),
        ),
      ),
    );
  }
}
