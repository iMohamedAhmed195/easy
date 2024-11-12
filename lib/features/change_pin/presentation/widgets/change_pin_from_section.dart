import '../../../../exports.dart';
import '../../../../core/widgets/common_button_section.dart';
import '../../../../core/widgets/password_and_pin_text_and_field.dart';

class ChangePinFromSection extends StatelessWidget {
  const ChangePinFromSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PasswordAndPinTextAndField(
          fieldName: AppStrings.currentPin,
          keyboardType: TextInputType.number,
        ),
        18.vs,
        const PasswordAndPinTextAndField(
          fieldName: AppStrings.newPin,
          keyboardType: TextInputType.number,
        ),
        18.vs,
        const PasswordAndPinTextAndField(
          fieldName: AppStrings.confirmNewPin,
          keyboardType: TextInputType.number,
        ),
        393.vs,
        CommonButtonSection(
          buttonText: AppStrings.changePin,
          onPressed: () => {},
        ),
      ],
    );
  }
}
