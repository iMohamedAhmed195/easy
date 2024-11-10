import '../../../../exports.dart';
import 'account_information_tabs_common_form.dart';

class PersonalInformationTabWorkplaceSection extends StatelessWidget {
  const PersonalInformationTabWorkplaceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const AccountInformationTabsFormSection(
      hintText: "Company Name",
      title: "Workplace",
    );
  }
}
