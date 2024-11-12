import 'package:easy/core/helpers/align_extension.dart';

import '../../../../../exports.dart';
import 'privacy_lists_section.dart';

class PrivacySection extends StatelessWidget {
  const PrivacySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.privacy,
          style: getSemiboldTextStyle(
            color: AppColors.richCharcoal,
            fontSize: 12,
          ),
        ).alignCenterStart(),
        8.vs,
        const PrivacyListsSection(),
      ],
    );
  }
}
