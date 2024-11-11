import '../../../../../exports.dart';
import '../account_information_tabs_common_form_section.dart';

class AddressInformationTabCitySection extends StatelessWidget {
  const AddressInformationTabCitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const AccountInformationTabsCommonFormSection(
      hintText: AppStrings.hintCity,
      title: AppStrings.titleCity,
    );
  }
}
