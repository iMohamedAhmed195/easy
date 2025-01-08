import '../../../../exports.dart';
import '../widgets/address/address_information_tab_body_section.dart';

class AddressInformationTabSection extends StatelessWidget {
  const AddressInformationTabSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 16.ph,
      child: const SingleChildScrollView(
        child: AddressInformationTabBodySection(),
      ),
    );
  }
}
