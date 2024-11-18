import '../../../../exports.dart';
import '../../data/models/my_loans_types_model.dart';

class MyLoansTypesListItmeSection extends StatelessWidget {
  final MyLoansTypesModel myLoansTypesData;
  const MyLoansTypesListItmeSection({super.key, required this.myLoansTypesData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 8.pv + 24.ph,
      decoration: ShapeDecoration(
        color: AppColors.softCloudBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.r),
        ),
      ),
      child: Center(
        child: Text(
          myLoansTypesData.name,
          textAlign: TextAlign.center,
          style: getSemiBoldTextStyle(
            fontSize: 12,
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
