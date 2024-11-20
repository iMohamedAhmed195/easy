import '../../../../../core/widgets/check_box.dart';
import '../../../../../exports.dart';

Widget buildExploreVerifiedPaymentSection() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
       Text(
      AppStrings.verifiedPayment  ,
        style: getSemiBoldTextStyle(
          fontSize: 14,
          color: AppColors.richCharcoal
        ),
      ),
      AppCheckbox(
        onChanged: (value) {},
        value: false,
      ),
    ],
  );
}
