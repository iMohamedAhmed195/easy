  import '../../../../../exports.dart';
import '../../../data/models/explore_loan_data_model.dart';

Widget buildExploreLoanContainerHeader(LoanData data) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          data.postedTime,
          style: getRegularTextStyle(
            color: AppColors.grayishBlueColor,
            fontSize: 10,
          ),
        ),
        SvgDisplayer(
          assetName: AppAssets.dots,
          width: 24.w,
          height: 24.h,
        ),
      ],
    );
  }