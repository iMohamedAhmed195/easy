import '../../exports.dart';

class PasswordTextAndField extends StatefulWidget {
  final String fieldName;
  const PasswordTextAndField({super.key, required this.fieldName});

  @override
  State<PasswordTextAndField> createState() => _PasswordTextAndFieldState();
}

class _PasswordTextAndFieldState extends State<PasswordTextAndField> {
  bool isObSecureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.fieldName,
          style: getRegularTextStyle(
            color: AppColors.richCharcoal,
            fontSize: 12,
          ),
        ).alignCenterStart(),
        8.vs,
        AppTextFormField(
          keyboardType: TextInputType.visiblePassword,
          enabledBorderSideWidth: 1.4,
          isObscureText: isObSecureText,
          suffixIcon: IconButton(
            icon: Icon(
              isObSecureText ? Icons.visibility_off : Icons.visibility,
              color: AppColors.darkGray,
              size: 20.r,
            ),
            onPressed: () {
              setState(() {
                isObSecureText = !isObSecureText;
              });
            },
          ),
          contentPadding: 12.pv + 16.ph,
          hintStyle: getRegularTextStyle(
            color: AppColors.darkGray,
            fontSize: 16,
          ),
          fillColor: AppColors.transparent,
          focusdBorderColor: AppColors.borderColor2,
          enabledBorderSideColor: AppColors.borderColor2,
          radius: 4,
          hintText: "***********",
        ),
      ],
    );
  }
}
