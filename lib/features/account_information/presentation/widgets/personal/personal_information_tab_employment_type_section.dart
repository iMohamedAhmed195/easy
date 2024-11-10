import '../../../../../exports.dart';
import '../account_information_tabs_common_form_section.dart';

class PersonalInformationTabEmploymentTypeSection extends StatelessWidget {
  const PersonalInformationTabEmploymentTypeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const AccountInformationTabsCommonFormSection(
      hintText: "Non-Salaried",
      title: "Employment Type",
    );
  }
}
