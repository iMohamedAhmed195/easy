import '../../../../exports.dart';
import '../../model/manage_bank_cards_details.dart';
import 'manage_bank_cards_trailing_icon_menu_section.dart';

class ManageBankCardsListItemSection extends StatelessWidget {
  final ManageBankCardDetailsModel bank;
  const ManageBankCardsListItemSection({super.key, required this.bank});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: 12.ph,
      tileColor: AppColors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1.w,
          color: AppColors.borderColor2,
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      leading: SvgDisplayer(
        assetName: AppAssets.bankCard,
        height: 40.h,
        width: 40.w,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (bank.isDefaultCard)
            Text(
              "Default Card",
              style: getSemiBoldTextStyle(
                fontSize: 10,
                color: AppColors.primaryColor,
              ),
            ),
          Text(
            bank.bankName,
            style: getSemiBoldTextStyle(
              fontSize: 12,
              color: AppColors.richCharcoal,
            ),
          ),
        ],
      ),
      subtitle: Text(
        bank.bankNumber,
        style: getRegularTextStyle(
          fontSize: 12,
          color: AppColors.grayishBlueColor,
        ),
      ),
      trailing: const ManageBankCardsTrailingIconMenuSection(),
    );
  }
}
