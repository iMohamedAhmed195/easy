import '../../../../../exports.dart';
import '../account_information_tabs_common_form_section.dart';

class PersonalInformationTabIdSection extends StatelessWidget {
  const PersonalInformationTabIdSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const AccountInformationTabsCommonFormSection(
      hintText: AppStrings.hintNationalId,
      title: AppStrings.titleNationalId,
    );
  }
}
