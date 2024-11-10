import '../../../../../exports.dart';
import '../account_information_tabs_common_form.dart';

class PersonalInformationTabIdSection extends StatelessWidget {
  const PersonalInformationTabIdSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const AccountInformationTabsFormSection(
      hintText: "7862 4396 8757 8322",
      title: "National ID",
    );
  }
}
