import '../../../../exports.dart';

class ContractPercentageAndPriceSection extends StatelessWidget {
  const ContractPercentageAndPriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              AppStrings.contractTaxPercentage,
              style: getRegularTextStyle(
                color: AppColors.grayishBlueColor,
                fontSize: 14,
              ),
            ),
            const Spacer(),
            Text(
              AppStrings.contractTaxPercentageValue,
              style: getRegularTextStyle(
                color: AppColors.richCharcoal,
                fontSize: 12,
              ),
            ),
          ],
        ),
        12.vs,
        Row(
          children: [
            Text(
              AppStrings.contractTaxPrice,
              style: getRegularTextStyle(
                color: AppColors.grayishBlueColor,
                fontSize: 14,
              ),
            ),
            const Spacer(),
            Text(
              AppStrings.contractTaxPriceValue,
              style: getRegularTextStyle(
                color: AppColors.richCharcoal,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
