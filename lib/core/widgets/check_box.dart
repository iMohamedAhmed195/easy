// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:easy/exports.dart';

class AppCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final Color? activeColor;
  final Color? checkColor;
  final MaterialTapTargetSize? materialTapTargetSize;

  const AppCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.activeColor,
    this.checkColor,
    this.materialTapTargetSize,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7.r),
      ),
      materialTapTargetSize: materialTapTargetSize,
      value: value,
      onChanged: onChanged,
      activeColor: activeColor,
      checkColor: checkColor,
    );
  }
}
