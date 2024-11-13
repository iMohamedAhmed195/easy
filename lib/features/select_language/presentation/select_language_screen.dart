import 'package:easy/core/widgets/custom_background.dart';
import 'package:easy/core/widgets/custom_button.dart';
import 'package:easy/features/select_language/presentation/manager/select_language_cubit.dart';
import 'package:easy/features/select_language/presentation/manager/select_language_state.dart';
import 'package:easy/features/select_language/presentation/widget/choose_language_section.dart';
import 'package:easy/features/select_language/presentation/widget/header_select_lang_section.dart';
import '../../../exports.dart';

class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectLanguageCubit, SelectLanguageState>(
      builder: (context, state) {
        return CustomBackground(
          statusBarColor: AppColors.transparent,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                const HeaderSelectLangSection(),
                const ChooseLanguageSection(),
                const Spacer(),
                CustomButton(
                  text: AppStrings.select,
                  onPressed: () {
                    push(context: context, route: Routes.onBoardingRoute);
                  },
                ),
                SizedBox(
                  height: 32.h,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
