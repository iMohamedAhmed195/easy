import 'package:easy/exports.dart';
import 'package:easy/features/loan_repayment/presentation/widgets/loan_wallet_tab_item_body_section.dart';
import '../widgets/loan_card_tab_item_body_section.dart';
import '../widgets/loan_repayment_tab_switched_item.dart';

class LoanRepaymentScreen extends StatelessWidget {
  const LoanRepaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          title: Text(
            AppStrings.loanRepaymentTitle,
            style: getSemiBoldTextStyle(
              fontSize: 16,
              color: AppColors.richCharcoal,
            ),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(54.h),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(8.r),
              ),
              child: Container(
                height: 42.h,
                margin: 19.ph,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.r),
                  ),
                  color: AppColors.backGroundGray,
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.r),
                    ),
                  ),
                  labelColor: AppColors.white,
                  unselectedLabelColor: AppColors.richCharcoal,
                  tabs: const [
                    LoanRepaymentTabSwitchedItem(
                      title: AppStrings.eWalletTabTitle,
                    ),
                    LoanRepaymentTabSwitchedItem(
                      title: AppStrings.debitCardTabTitle,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            LoanWalletTabItemBodySection(),
            LoanCardTabItemBodySection(),
          ],
        ),
      ),
    );
  }
}
