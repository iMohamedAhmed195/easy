import '../../../../exports.dart';
import '../../../../core/widgets/common_button_section.dart';
import '../../../../core/widgets/password_text_and_field.dart';
class ChangePasswordFromSection extends StatelessWidget {
  const ChangePasswordFromSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PasswordTextAndField(
          fieldName: AppStrings.currentPassword,
        ),
        18.vs,
        const PasswordTextAndField(
          fieldName: AppStrings.newPassword,
        ),
        18.vs,
        const PasswordTextAndField(
          fieldName: AppStrings.confirmNewPassword,
        ),
        393.vs,
        CommonButtonSection(
          buttonText: AppStrings.changePassword,
          onPressed: () => {},
        ),
      ],
    );
  }
}