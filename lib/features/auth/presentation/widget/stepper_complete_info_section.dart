// ignore_for_file: deprecated_member_use

import 'package:dotted_line/dotted_line.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_cubit.dart';

import '../../../../exports.dart';

class StepperCompleteInfoSection extends StatelessWidget {
  const StepperCompleteInfoSection({super.key, required this.uiAuthCubit});
  final UiAuthCubit uiAuthCubit ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.transparent,
                border: Border.all(
                  color: AppColors.green,
                  width: 1,
                ),

              ),
              child: Center(
                child: SvgPicture.asset(AppAssets.personalInfo),
              ),
            ),
            DottedLine(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              lineLength: 92.w,
              lineThickness: 1.0,
              dashLength: 6.0,
              dashColor:uiAuthCubit.savedPage.contains(1)  ? AppColors.green : AppColors.gray,
              dashRadius: 0.0,
              dashGapLength: 6.0,
            ),
            Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.transparent,
                border: Border.all(
                  color:uiAuthCubit.savedPage.contains(1)? AppColors.green : AppColors.gray,
                  width: 1,
                ),

              ),
              child: Center(
                child: SvgPicture.asset(AppAssets.addressInfo,color: uiAuthCubit.savedPage.contains(1) ? AppColors.green : AppColors.gray,),
              ),
            ),
            DottedLine(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              lineLength: 92.w,
              lineThickness: 1.0,
              dashLength: 6.0,
              dashColor:uiAuthCubit.savedPage.contains(2)? AppColors.green : AppColors.gray,
              dashRadius: 0.0,
              dashGapLength: 6.0,
            ),
            Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.transparent,
                border: Border.all(
                  color:uiAuthCubit.savedPage.contains(2) ? AppColors.green : AppColors.gray,
                  width: 1,
                ),

              ),
              child: Center(
                child: SvgPicture.asset(AppAssets.accountType,color: uiAuthCubit.savedPage.contains(2) ? AppColors.green : AppColors.gray,),
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h,),
        Row(
          children: [
            Text(
              AppStrings.personalInfo,
              style: getSemiboldTextStyle(
                  fontSize: 10,
                  color: AppColors.green
              ),
            ),
            const Spacer(),
            Text(
              AppStrings.addressInfo,
              style:  getSemiboldTextStyle(
                  fontSize: 10,
                  color: uiAuthCubit.savedPage.contains(2) ? AppColors.green : AppColors.gray
              ),
            ),
            const Spacer(),
            Text(
              AppStrings.accountType,
              style:  getSemiboldTextStyle(
                  fontSize: 10,
                  color: uiAuthCubit.savedPage.contains(2)? AppColors.green : AppColors.gray
              ),
            )
          ],
        ),
      ],
    );
  }
}
