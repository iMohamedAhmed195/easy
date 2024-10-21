

import 'package:easy/features/select_language/presentation/manager/select_language_state.dart';

import '../../../../exports.dart';

class SelectLanguageCubit extends Cubit<SelectLanguageState> {
  SelectLanguageCubit() : super(SelectLanguageInitial());

  bool isEnglish = true;

  void changeLanguage() {
    isEnglish = !isEnglish;
    emit(ChangeLanguageState());
  }
}
