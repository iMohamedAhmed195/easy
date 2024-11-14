import 'package:flutter_dash/flutter_dash.dart';

import '../../../../exports.dart';

class ApplyForLoanContainerDashSection extends StatelessWidget {
  const ApplyForLoanContainerDashSection({super.key});

  @override
  Widget build(BuildContext context) {
    //! May Be Used Later ....
    return Center(
      child: Dash(
        direction: Axis.horizontal,
        length: 294.w,
        dashColor: AppColors.coolGray,
        dashGap: 4.w,
        dashThickness: 4.w,
      ),
    );
  }
}
