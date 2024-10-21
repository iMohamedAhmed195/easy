mixin class SvgImages {
  static String svgPath = "assets/svg";
///////////////////////////////  svg  ////////////////////////////////////
  String success = "$svgPath/success.svg";
  String failure = "$svgPath/failure.svg";
  String empty = "$svgPath/empty.svg";
  String notificationDialog = "$svgPath/notification_permission.svg";
  String cameraDialog = "$svgPath/camera_permission.svg";
  String saudi = "$svgPath/saudi_arabia.svg";
  String america = "$svgPath/america.svg";
  String eyeIcon = "$svgPath/eye.svg";
  String eyeOffIcon = "$svgPath/eye.svg";
  String onBoarding1 = "$svgPath/manage_money_ill.svg";
  String onBoarding2 = "$svgPath/car_oil.svg";
  String onBoarding3 = "$svgPath/e_wallet.svg";
  String arrowLeft = "$svgPath/arrow_left.svg";
  String facebook = "$svgPath/facebook.svg";
  String google = "$svgPath/google.svg";
  String apple = "$svgPath/apple.svg";
  String checkMark = "$svgPath/checkmark_ill.svg";
  String personalInfo = "$svgPath/personal_info.svg";
  String addressInfo = "$svgPath/address_info.svg";
  String accountType = "$svgPath/account_type.svg";

  String money = "$svgPath/money_ill.svg";
  String oil = "$svgPath/oill.svg";
  String home = "$svgPath/home_disabled.svg";
  String wallet = "$svgPath/wallet_disabled.svg";
  String loans = "$svgPath/loans_disabled.svg";
  String profile = "$svgPath/profile_disabled.svg";
  String homeActive = "$svgPath/home_active.svg";
  String walletActive = "$svgPath/wallet_active.svg";
  String loansActive = "$svgPath/loans_active.svg";
  String profileActive = "$svgPath/profile_active.svg";
  String explore = "$svgPath/explore_disabled.svg";
  String exploreActive = "$svgPath/explore_active.svg";
  String qrCode = "$svgPath/qr_code_scan_grey.svg";
  String qrCodeActive = "$svgPath/qr_code_active.svg";
  String liveChat = "$svgPath/live_chat.svg";
  String notification1 = "$svgPath/notification_1.svg";
  String arrowGreenUp = "$svgPath/arrow_up.svg";
  String coins = "$svgPath/money.svg";
  String applyLoan = "$svgPath/apply_for_a_loan.svg";
  String replacementLoan = "$svgPath/loan_repayment.svg";
  String easyFuel = "$svgPath/easy_fuel.svg";
  String manageCard = "$svgPath/manage_cards.svg";
  String money2 = "$svgPath/money_2.svg";
  String taj = "$svgPath/taj.svg";

}

mixin PngImages {
  static String imagesPath = "assets/image";
  String onboarding = "$imagesPath/onBording.png";
  String logoWhite = "$imagesPath/logo_white.png";
  String backgroundScreen = "$imagesPath/splash_background.png";
  String logo = "$imagesPath/logo.png";
  String customer = "$imagesPath/customer.png";
  String provider = "$imagesPath/provider.png";


}
mixin JsonFiles {
  static String lottiePath = 'assets/json';

}

class AppAssets with SvgImages, PngImages, JsonFiles {
  AppAssets.__internal();
  factory AppAssets() => AppAssets.__internal();
  static String gifPath = "assets/gif";
  ///////////////////////////////////////////////////

  /////////////////////////////////////////////////////////////////
  String locationGif = "$gifPath/location.gif";
  ///////////////////////////// png ////////////////////////////////////
}
