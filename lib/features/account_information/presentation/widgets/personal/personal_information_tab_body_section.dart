import '../../../../../exports.dart';
import '../account_information_common_button_section.dart';
import 'perosnal_information_tab_email_section.dart';
import 'personal_information_tab_birth_section.dart';
import 'personal_information_tab_employment_type_section.dart';
import 'personal_information_tab_id_section.dart';
import 'personal_information_tab_name_section.dart';
import 'personal_information_tab_workplace_section.dart';

class PersonalInformationTabBodySection extends StatelessWidget {
  const PersonalInformationTabBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        16.vs,
        const PersonalInformationTabNameSection(),
        16.vs,
        const PersonalInformationTabEmailSection(),
        16.vs,
        const PersonalInformationTabIdSection(),
        16.vs,
        const PersonalInformationTabWorkplaceSection(),
        16.vs,
        const PersonalInformationTabBirthSection(),
        16.vs,
        const PersonalInformationTabEmploymentTypeSection(),
        68.vs,
        const AccountInformationCommonButtonSection(),
        32.vs,
      ],
    );
  }
}
