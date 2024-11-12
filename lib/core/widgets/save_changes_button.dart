import '../../exports.dart';
import 'common_button_section.dart';

class SaveChangesButton extends StatelessWidget {
  const SaveChangesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonButtonSection(
      buttonText: AppStrings.saveChangesButtonText,
      onPressed: () {},
    );
  }
}
