import '../../../../exports.dart';
import 'personal_information_tab_body_section.dart';

class PersonalInformationTabSection extends StatelessWidget {

  const PersonalInformationTabSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 16.ph,
      child:const SingleChildScrollView(
        child: PersonalInformationTabBodySection(),
      ),
    );
  }
}
