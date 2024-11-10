import '../../../../../exports.dart';
import '../account_information_tabs_common_form_section.dart';

class PersonalInformationTabWorkplaceSection extends StatelessWidget {
  const PersonalInformationTabWorkplaceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const AccountInformationTabsCommonFormSection(
      hintText: "Company Name",
      title: "Workplace",
    );
  }
}
