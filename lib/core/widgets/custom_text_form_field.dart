import '../../exports.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.keyboardType,
      required this.obscureText,
      this.validator,
      this.prefixSvgIcon,
      this.style,
      this.suffixSvgIcon,
      this.radiusOfContainer,
      this.otherSuffixSvgIcon,
      required this.controller,
      required this.isPassword,
      this.maxLines,
      this.padding,
      this.enabled});
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  bool obscureText;
  bool isPassword = false;
  TextStyle? style = getRegularTextStyle(fontSize: 12, color: AppColors.darkGray);
  final String? Function(String?)? validator;
  final Widget? prefixSvgIcon;
  final Widget? suffixSvgIcon;
  final Widget? otherSuffixSvgIcon;
  final double? radiusOfContainer;
  final EdgeInsetsGeometry? padding;
  final int? maxLines;
  final bool? enabled;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      enabled: widget.enabled ?? true,
      validator: widget.validator,
      maxLines: widget.maxLines ?? 1,
      autocorrect: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscuringCharacter: '*',
      style: getRegularTextStyle(fontSize: 16, color: AppColors.black),
      decoration: InputDecoration(
        contentPadding: widget.padding ?? EdgeInsets.zero,
        hintText: widget.hintText,
        hintStyle: widget.style,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(widget.radiusOfContainer ?? 4.r)),
          borderSide:  BorderSide(color: AppColors.borderColor2, width: 1.4),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(widget.radiusOfContainer ?? 4.r)),
          borderSide:  BorderSide(color: AppColors.borderColor2, width: 1.4),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(widget.radiusOfContainer ?? 4.r)),
          borderSide: const BorderSide(color: AppColors.primaryColor, width: 1.4),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(widget.radiusOfContainer ?? 4.r)),
          borderSide: const BorderSide(color: Colors.red, width: 1.4),
        ),
        prefixIcon: widget.prefixSvgIcon != null
            ? Padding(
                padding: EdgeInsets.all(10.r),
                child: widget.prefixSvgIcon,
              )
            : null,
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    widget.obscureText = !widget.obscureText;
                  });
                },
                child: Padding(
                    padding: EdgeInsets.all(16.r),
                    child: widget.obscureText ? SvgPicture.asset(AppAssets().eyeIcon) : SvgPicture.asset(AppAssets().eyeOffIcon)),
              )
            : null,
      ),
    );
  }
}
