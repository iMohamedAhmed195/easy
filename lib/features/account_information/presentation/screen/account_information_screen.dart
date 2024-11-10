import '../../../../exports.dart';
import '../widgets/personal_information_tab_section.dart';

class AccountInformationScreen extends StatelessWidget {
  //! "I didn’t complete the screen or refactor because I'll be working on another app."
  const AccountInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, //! Number of tabs
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: AppStrings.personalInfo,
              ),
              Tab(
                text: AppStrings.addressInfo,
              ),
              Tab(
                text: AppStrings.accountType,
              ),
            ],
          ),
          title: const Text(
            AppStrings.accountInformation,
          ),
          centerTitle: true,
          titleTextStyle: getSemiboldTextStyle(
            fontSize: 16,
            fontFamily: FontFamilies.openSans,
            color: AppColors.black,
          ),
          iconTheme: IconThemeData(
            color: AppColors.black,
            size: 24.r,
          ),
        ),
        body: const TabBarView(
          children: [
            PersonalInformationTabSection(),
            PersonalInformationTabSection(),
            PersonalInformationTabSection(),
          ],
        ),
      ),
    );
  }
}
