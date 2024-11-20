import 'package:easy/exports.dart';

import '../../../../core/widgets/app_divider.dart';
import '../../../../core/widgets/common_button_section.dart';
import 'build_explore_loan_amount_section.dart';
import 'build_explore_loan_term_section.dart';
import 'build_explore_modal_header_section.dart';
import 'build_explore_verified_payment_section.dart';

class FilterModalSection extends StatelessWidget {
  const FilterModalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(16.w, 8.h, 16.w, 0.h),
      width: 360.w,
      height: 392.h,
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r),
            topRight: Radius.circular(16.r),
          ),
        ),
      ),
      child: Column(
        children: [
          buildExploreModalHeaderSection(),
          12.vs,
          buildExploreLoanAmountSection(),
          16.vs,
          const AppDivider(),
          16.vs,
          buildExploreLoanTermSection(),
          16.vs,
          const AppDivider(),
          16.vs,
          buildExploreVerifiedPaymentSection(),
          24.vs,
          CommonButtonSection(
            buttonText:AppStrings.applyFilters ,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
