import '../../../../../exports.dart';
import '../account_information_tabs_common_form_section.dart';

class AddressInformationTabAddressSection extends StatelessWidget {
  const AddressInformationTabAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AccountInformationTabsCommonFormSection(
          hintText: "Address Line 1",
          title: "Address line 1",
        ),
        16.vs,
        const AccountInformationTabsCommonFormSection(
          hintText: "Address Line 2 (Optional)",
          title: "Address line 2",
        ),
      ],
    );
  }
}
