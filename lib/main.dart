import 'custom_easy_localization.dart';
import 'exports.dart';
import 'easy_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await init;
  runApp(const CustomEasyLocalization(child: EasyApp()));
}

Future get init async {
  WidgetsFlutterBinding.ensureInitialized();
  ScreenUtil.ensureScreenSize();
  Bloc.observer = GlobalBlocObserver();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await ServiceLocator().init; // initialize all dependencies
  // await EasyLocalization.ensureInitialized();
}
