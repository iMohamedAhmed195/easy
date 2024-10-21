import '../../../../exports.dart';

abstract class OnBoardingLocalDataSource {
  Future<ResponseModel> cacheNew();
  Future<ResponseModel> getNew();
}

class OnBoardingLocalDataSourceImplWithPrefs extends OnBoardingLocalDataSource {
  SharedPreferences sharedPreferences;
  OnBoardingLocalDataSourceImplWithPrefs({required this.sharedPreferences});
  @override
  Future<ResponseModel> cacheNew() => cacheWrite(sharedPreferences, AppPrefs.prefsNewInstallKey, false);

  @override
  Future<ResponseModel> getNew() async => cacheRead<bool?>(sharedPreferences, AppPrefs.prefsNewInstallKey);
}
