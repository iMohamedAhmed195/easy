import '../../../../exports.dart';
import 'account_information_common_button_section.dart';
import 'address_information_tab_address_section.dart';
import 'address_information_tab_city_section.dart';
import 'address_infromation_tab_zip_code_section.dart';

class AddressInformationTabBodySection extends StatelessWidget {
  const AddressInformationTabBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        16.vs,
        const AddressInformationTabAddressSection(),
        16.vs,
        const AddressInformationTabCitySection(),
        16.vs,
        const AddressInfromationTabZipCodeSection(),
        240.vs,
        const AccountInformationCommonButtonSection(),
        32.vs,
      ],
    );
  }
}
