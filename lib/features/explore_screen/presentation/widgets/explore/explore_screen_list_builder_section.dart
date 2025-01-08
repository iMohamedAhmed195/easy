import 'package:easy/features/explore_screen/presentation/widgets/explore/explore_loan_list_item_section.dart';

import '../../../../../exports.dart';
import 'explore_loan_model_data.dart';

class ExploreScreenListBuilderSection extends StatelessWidget {
  const ExploreScreenListBuilderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: loanDataList.length,
      itemBuilder: (context, index) {
        final data = loanDataList[index];
        return ExploreLoanListItemSection(data: data);
      },
    );
  }
}
