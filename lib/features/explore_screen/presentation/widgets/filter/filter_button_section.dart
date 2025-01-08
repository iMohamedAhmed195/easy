import '../../../../../exports.dart';
import 'show_filter_modal_section.dart';

class FilterButtonSection extends StatelessWidget {
  const FilterButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(25.50.r),
        boxShadow: [
          BoxShadow(
            color:  AppColors.transparent,
            blurRadius: 12.r,
            offset: const Offset(0, 0),
            spreadRadius: 0.r,
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () => showFilterModalSection(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgDisplayer(
              assetName: AppAssets.filter,
              height: 21.3.h,
              width: 18.7.w,
            ),
            10.65.hs,
            Text(
              AppStrings.filters,
              textAlign: TextAlign.center,
              style: getSemiBoldTextStyle(
                fontSize: 14,
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
