import '../../../../core/widgets/custom_app_bar_with_back_arrow_section.dart';
import '../../../../exports.dart';
import 'my_loans_list_section.dart';
import 'my_loans_types_list_section.dart';

class MyLoansScreenBodySection extends StatelessWidget {
  const MyLoansScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarWithBackArrowSection(
          isPop: false,
          appBarTitle: AppStrings.myLoans,
        ),
        25.vs,
        const MyLoansTypesListSection(),
        24.vs,
        const MyLoansListSection(),
      ],
    );
  }
}
