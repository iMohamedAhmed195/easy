import '../../../../../exports.dart';
import '../account_information_tabs_common_form.dart';

class PersonalInformationTabEmploymentTypeSection extends StatelessWidget {
  const PersonalInformationTabEmploymentTypeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const AccountInformationTabsFormSection(
      hintText: "Non-Salaried",
      title: "Employment Type",
    );
  }
}
