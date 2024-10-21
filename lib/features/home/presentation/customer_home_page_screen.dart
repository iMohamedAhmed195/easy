import 'package:easy/core/widgets/custome_svg_image.dart';
import 'package:easy/features/home/data/model/services_model.dart';
import 'package:easy/features/home/presentation/widget/current_balance_section.dart';
import 'package:easy/features/home/presentation/widget/home_app_bar_section.dart';
import 'package:easy/features/home/presentation/widget/image_get_loans_Section.dart';
import 'package:easy/features/home/presentation/widget/services_home_section.dart';
import 'package:easy/features/home/presentation/widget/three_top_loaners_section.dart';
import 'package:easy/features/home/presentation/widget/top_loaners_list_view_section.dart';
import 'package:hive/hive.dart';
import '../../../exports.dart';

class CustomerHomePageScreen extends StatelessWidget {
  const CustomerHomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15.h,
          ),
          const HomeAppBarSection(),
          SizedBox(
            height: 24.h,
          ),
          const CurrentBalanceSection(),
          const ImageGetLoansSection(),
          const ServicesHomeSection(),
          const ThreeTopLoanersSection(),
          SizedBox(
            height: 16.h,
          ),
          TopLoanersListViewSection(),
        ],
      ),
    );
  }
}
