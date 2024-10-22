import 'package:easy/features/auth/presentation/ui_manager/ui_auth_state.dart';
import '../../../../exports.dart';

class UiAuthCubit extends Cubit<UiAuthState> {
  UiAuthCubit() : super(UiAuthInitial());

  ///login

  TextEditingController loginPhoneNumberController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  var loginFormKey = GlobalKey<FormState>();
  String? loginCountryId ;
  String? loginCountryCode ;

  bool isRemember = false;
  changeRememberMe() {
    isRemember = !isRemember;
    emit(ChangeRememberMeState());
  }

  ///register
  TextEditingController registerFirstNameController = TextEditingController();
  TextEditingController registerLastNameController = TextEditingController();
  TextEditingController registerPhoneNumberController = TextEditingController();
  TextEditingController registerPasswordController = TextEditingController();
  TextEditingController registerConfirmPasswordController = TextEditingController();
  String? registerCountryId ;
  String? registerCountryCode ;
  var registerFormKey = GlobalKey<FormState>();

 ///forget password

  TextEditingController forgetPasswordPhoneNumberController = TextEditingController();
  String? forgetCountryId ;
  String? forgetCountryCode ;

 ///reset password

  TextEditingController resetPasswordConfirmController = TextEditingController();
  TextEditingController resetPasswordController = TextEditingController();
  var resetPasswordFormKey = GlobalKey<FormState>();

  /// complete profile
  TextEditingController completeProfileEmailController = TextEditingController();
  TextEditingController completeProfileNationalIdController = TextEditingController();
  TextEditingController completeProfileWorkPlaceController = TextEditingController();
  final PageController pageController = PageController();

  bool isLastPage = false;
  int nextPage = 0;
  List<int> savedPage=[];
  changeIncreasePageIndex({required int index}) {
    if(index<=2){
      pageController.jumpToPage(index);
      nextPage = index;
      savedPage.add(nextPage);
      print(savedPage);
    }
    emit(ChangePageIndexState());
}
  changeDecreasePageIndex({required int index}) {
    if(index>=0){
      pageController.jumpToPage(index);
      savedPage.remove(nextPage);
      nextPage = index;
      print(savedPage);
    }

    emit(ChangePageIndexState());
  }

  bool isCustomer = true;
  changeAccountType() {
    isCustomer = !isCustomer;
    emit(ChangeAccountTypeState());
  }

  //! TODO: select more than provider service oil + moe
  bool isMoneyProvider = true;
  changeServiceType() {
    isMoneyProvider = !isMoneyProvider;
    emit(ChangeServiceTypeState());
  }
}
