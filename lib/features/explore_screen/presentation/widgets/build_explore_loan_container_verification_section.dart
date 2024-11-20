import '../../../../exports.dart';
import '../../data/models/explore_loan_data_model.dart';

Widget buildExploreLoanContainerVerification(LoanData data) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          SvgDisplayer(
            assetName: AppAssets.verification,
            height: 16.h,
            width: 16.w,
          ),
          4.hs,
          Text(
            'Verification',
            style: getRegularTextStyle(
              color: AppColors.richCharcoal,
              fontSize: 12,
            ),
          ),
        ],
      ),
      Text(
        data.verificationStatus,
        textAlign: TextAlign.right,
        style: getSemiBoldTextStyle(
          color: AppColors.strongGreen,
          fontSize: 12,
        ),
      ),
    ],
  );
}
