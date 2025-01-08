import 'package:easy/features/my_loans/presentation/widgets/loan_model_data.dart';

import '../../../../exports.dart';
import 'my_loans_build_loan_card.dart';

class MyLoansListSection extends StatelessWidget {
  const MyLoansListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 546.h,
      child: ListView.builder(
        itemCount: myLoansData.length,
        itemBuilder: (context, index) {
          final loan = myLoansData[index];
          return buildLoanCard(loan);
        },
      ),
    );
  }
}
