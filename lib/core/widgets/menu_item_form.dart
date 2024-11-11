// ignore_for_file: library_private_types_in_public_api

import '../../exports.dart';
import '../models/account_types_model.dart';

class ProviderServiceTypeTextFormField extends StatefulWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final TextStyle? inputStyle;
  final TextStyle? hintStyle;
  final bool? isObscureText;
  final String initialHintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? fillColor;
  final TextEditingController? controller;
  final Function(String?)? validator;
  final Color? enabledBorderSideColor;
  final Color? focusdBorderColor;
  final int? radius;
  final String? labelText;
  final TextStyle? labelStyle;
  final Color? cursorColor;
  final bool isEnabled; //! Whether the field allows user input
  final double? height;
  final double? width;
  final List<MenuItemData>? popupMenuItems; //! List of items with name
  final Function(MenuItemData)?
      onMenuItemSelected; //! Callback for item selection
  final Color? popupMenuColor;

  const ProviderServiceTypeTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.inputStyle,
    this.hintStyle,
    this.isObscureText,
    required this.initialHintText,
    this.suffixIcon,
    this.prefixIcon,
    this.fillColor,
    this.controller,
    this.radius,
    this.enabledBorderSideColor,
    this.labelText,
    this.labelStyle,
    this.focusdBorderColor,
    this.cursorColor,
    this.validator,
    this.isEnabled = true, //! Default is true, so the field is editable
    this.popupMenuItems,
    this.onMenuItemSelected,
    this.height,
    this.width,
    this.popupMenuColor,
  });

  @override
  _ProviderServiceTypeTextFormFieldState createState() =>
      _ProviderServiceTypeTextFormFieldState();
}

class _ProviderServiceTypeTextFormFieldState
    extends State<ProviderServiceTypeTextFormField> {
  String? selectedHintText; //! Track the selected hint text

  @override
  void initState() {
    super.initState();
    selectedHintText = widget.initialHintText;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.popupMenuItems != null &&
            widget.popupMenuItems!.isNotEmpty) {
          _showPopupMenu(context);
        }
      },
      child: AbsorbPointer(
        absorbing: !widget.isEnabled, //! Disable text input if not enabled
        child: SizedBox(
          height: widget.height,
          width: widget.width,
          child: TextFormField(
            controller: widget.controller,
            decoration: InputDecoration(
              labelText: widget.labelText,
              labelStyle: widget.labelStyle,
              isDense: true,
              contentPadding: widget.contentPadding ??
                  EdgeInsets.symmetric(
                    horizontal: 23.0.w,
                    vertical: 16.0.h,
                  ),
              focusedBorder: widget.focusedBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        widget.radius?.toDouble() ?? 4.0.r),
                    borderSide: BorderSide(
                      color: widget.focusdBorderColor ?? AppColors.primaryColor,
                      width: 1.4.w,
                    ),
                  ),
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(widget.radius?.toDouble() ?? 4.0.r),
                borderSide: BorderSide(
                  color: widget.enabledBorderSideColor ?? AppColors.white,
                  width: 1.4.w,
                ),
              ),
              hintStyle: widget.hintStyle ?? getMediumTextStyle(),
              hintText: selectedHintText, //! Update hint text dynamically
              suffixIcon: widget.suffixIcon,
              suffixIconColor: AppColors.white,
              prefixIcon: widget.prefixIcon,
              prefixIconColor: AppColors.white,
              fillColor: widget.fillColor ?? AppColors.white,
              filled: true,
              errorBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(widget.radius?.toDouble() ?? 4.0.r),
                borderSide: BorderSide(
                  color: AppColors.red,
                  width: 1.4.w,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(widget.radius?.toDouble() ?? 4.0.r),
                borderSide: BorderSide(
                  color: AppColors.red,
                  width: 1.4.w,
                ),
              ),
            ),
            cursorColor: widget.cursorColor ?? AppColors.primaryColor,
            obscureText: widget.isObscureText ?? false,
            style: widget.inputStyle ?? getMediumTextStyle(),
          ),
        ),
      ),
    );
  }

  //! Show popup menu for the list of items with name
  void _showPopupMenu(BuildContext context) {
    //! Get the RenderBox of the current widget
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    //! Calculate the position of the popup menu
    Offset offset = renderBox.localToGlobal(Offset.zero);

    showMenu<MenuItemData>(
      color: widget.popupMenuColor ?? AppColors.white,
      context: context,
      position: RelativeRect.fromLTRB(
        offset.dx, //! X position
        offset.dy + renderBox.size.height, //! Y position starts from the bottom
        0.0,
        0.0,
      ),
      items: widget.popupMenuItems!.map((MenuItemData item) {
        return PopupMenuItem<MenuItemData>(
          value: item,
          child: Text(
            item.name,
            style: getSemiboldTextStyle(
              color: AppColors.richCharcoal,
              fontSize: 16,
            ),
          ), //! Display the 'name' field in the popup
        );
      }).toList(),
    ).then((MenuItemData? selectedItem) {
      if (selectedItem != null) {
        setState(() {
          selectedHintText = selectedItem.name; //! Update the hint text
        });
        if (widget.onMenuItemSelected != null) {
          widget.onMenuItemSelected!(selectedItem); //! Trigger callback
        }
      }
    });
  }
}
