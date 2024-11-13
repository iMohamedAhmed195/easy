import '../../../../exports.dart';
import '../../../../core/widgets/custom_app_bar_with_back_arrow_section.dart';

class ProfileScreenAppBarSection extends StatelessWidget {
  const ProfileScreenAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomAppBarWithBackArrowSection(
      isPop: false,
      appBarTitle: AppStrings.profile,
    );
  }
}
