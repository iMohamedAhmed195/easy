import '../../../../core/widgets/custom_app_bar_with_back_arrow_section.dart';
import '../../../../exports.dart';
import 'change_pin_from_section.dart';

class ChangePinBodySection extends StatelessWidget {
  const ChangePinBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const CustomAppBarWithBackArrowSection(
              isPop: true,
              appBarTitle: AppStrings.changePin,
            ),
            27.vs,
            const ChangePinFromSection(),
            32.vs,
          ],
        ),
      ],
    );
  }
}
