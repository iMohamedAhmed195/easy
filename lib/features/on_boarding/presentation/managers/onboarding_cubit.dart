import 'package:easy/features/on_boarding/data/models/onboarding_model.dart';
import 'package:easy/features/on_boarding/domain/usecase/onborading_usecases.dart';
import 'package:easy/features/on_boarding/presentation/managers/onboarding_state.dart';
import '../../../../exports.dart';


class OnboardingCubit extends Cubit<OnboardingState> {
  OnBoardingUsesCases onBoardingUsesCases;
  OnboardingCubit({required this.onBoardingUsesCases}) : super(OnboardingInitial());
  OnBoardingItems onBoardingItems = OnBoardingItems();

  Future<bool> isNewInstalled() async => (await managerExecute<bool?>(onBoardingUsesCases.getNew())).orTrue;

  Future<bool> cachedNewInstall() async => (await managerExecute<bool?>(onBoardingUsesCases.cacheNew(), onSuccess: (data) {
    Routes.loginRoute.moveToAndRemoveCurrent();
  }))
      .orFalse;

  final PageController pageController = PageController();
  bool isLastPage = false;
  int indicatorIndex = 0;
  int nextPage = 0;
  changePageIndex({int? index}) {
    if(index ==null){
      pageController.nextPage(duration: const Duration(milliseconds: 600), curve: Curves.easeIn);
      pageController.addListener(() {
        nextPage = pageController.page!.round();
      });
      if(nextPage == 0){
        indicatorIndex =1;
      }
      else if( nextPage == 1){
        indicatorIndex = 2;
        isLastPage = true ;
      }
    }
    else{
      nextPage = index;
      indicatorIndex = nextPage;
      isLastPage = false;
      if(indicatorIndex == 2){
        isLastPage = true;
      }
    }
    emit(ChangePageIndex());
  }
  skipPage({int? index}) {
    if(index ==2){
      pageController.jumpToPage(
        onBoardingItems.onBoardingItems.length - 1,
      );
    }
    emit(ChangePageIndex());
  }
}
