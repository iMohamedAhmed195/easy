import '../../../../exports.dart';

Widget buildQrCodeScanningInstructionText(String text, double fontSize) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: getSemiBoldTextStyle(
        color: AppColors.white,
        fontSize: fontSize,
      ),
    );
  }