import '../../../../exports.dart';
import 'account_type_tab_section.dart';
import 'address_information_tab_section.dart';
import 'personal_information_tab_section.dart';

class AccountInformationScreen extends StatelessWidget {
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
          titleTextStyle: getSemiBoldTextStyle(
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
            AddressInformationTabSection(),
            AccountTypeTabSection(),
          ],
        ),
      ),
    );
  }
}
