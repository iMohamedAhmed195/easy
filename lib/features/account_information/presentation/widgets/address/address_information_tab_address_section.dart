import '../../../../../exports.dart';
import '../account_information_tabs_common_form_section.dart';

class AddressInformationTabAddressSection extends StatelessWidget {
  const AddressInformationTabAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AccountInformationTabsCommonFormSection(
          hintText: AppStrings.hintAddressLine1,
          title: AppStrings.titleAddressLine1,
        ),
        16.vs,
        const AccountInformationTabsCommonFormSection(
          hintText:  AppStrings.hintAddressLine2,
          title: AppStrings.titleAddressLine2,
        ),
      ],
    );
  }
}
