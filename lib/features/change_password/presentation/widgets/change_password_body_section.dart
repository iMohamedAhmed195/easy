import '../../../../core/widgets/custom_app_bar_with_back_arrow_section.dart';
import '../../../../exports.dart';
import 'change_password_from_section.dart';

class ChangePasswordBodySection extends StatelessWidget {
  const ChangePasswordBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const CustomAppBarWithBackArrowSection(
              isPop: true,
              appBarTitle: AppStrings.changePassword,
            ),
            27.vs,
            const ChangePasswordFromSection(),
            32.vs,
          ],
        ),
      ],
    );
  }
}
