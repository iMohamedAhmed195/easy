import '../../../../exports.dart';

class OnboardingModel {
  final String imagePath, title, subTitle;
  OnboardingModel({
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });
}

class OnBoardingItems {
  List<OnboardingModel> onBoardingItems = [
    OnboardingModel(
      imagePath: AppAssets.onBoarding1,
      title: AppStrings().onBoarding1Title,
      subTitle: AppStrings().onBoarding1SubTitle,
    ),
    OnboardingModel(
      imagePath: AppAssets.onBoarding2,
      title: AppStrings().onBoarding2Title,
      subTitle: AppStrings().onBoarding2SubTitle,
    ),
    OnboardingModel(
      imagePath: AppAssets.onBoarding3,
      title: AppStrings().onBoarding3Title,
      subTitle: AppStrings().onBoarding3SubTitle,
    ),
  ];
}
