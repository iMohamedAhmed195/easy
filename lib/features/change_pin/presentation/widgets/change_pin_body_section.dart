import '../../../../core/widgets/profile_and_related_screens_app_bar_section.dart';
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
            const ProfileAndRelatedScreensCustomAppBarSection(
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
