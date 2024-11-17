import '../../../../core/widgets/check_box.dart';
import '../../../../exports.dart';

class AddNewBankCardFormSetCardAsDefaultSection extends StatefulWidget {
  const AddNewBankCardFormSetCardAsDefaultSection({super.key});

  @override
  State<AddNewBankCardFormSetCardAsDefaultSection> createState() =>
      _AddNewBankCardFormSetCardAsDefaultSectionState();
}

class _AddNewBankCardFormSetCardAsDefaultSectionState
    extends State<AddNewBankCardFormSetCardAsDefaultSection> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.zero,
          child: AppCheckbox(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: isTapped,
            onChanged: (newChangedValue) {
              setState(() {
                isTapped = newChangedValue ?? false;
              });
            },
            activeColor: AppColors.primaryColor,
            checkColor: AppColors.white,
          ),
        ),
        Text(
          AppStrings.setCardAsDefault,
          style:
              getSemiBoldTextStyle(fontSize: 12, color: AppColors.richCharcoal),
        ),
      ],
    );
  }
}
