import 'package:easy/core/widgets/custome_svg_image.dart';
import 'package:easy/features/home/data/model/services_model.dart';

import '../../../../exports.dart';

class ServicesHomeSection extends StatelessWidget {
  const ServicesHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<ServicesModel> customerServices = [
      ServicesModel(
          title: AppStrings().applyForALoan, svgPath: AppAssets.applyLoan),
      ServicesModel(
          title: AppStrings().manageCards, svgPath: AppAssets.manageCard),
      ServicesModel(
          title: AppStrings().loanRepayment,
          svgPath: AppAssets.replacementLoan),
      ServicesModel(title: AppStrings().easyFuel, svgPath: AppAssets.easyFuel),
    ];
    return SizedBox(
      height: 297.h,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings().services,
            style: getSemiboldTextStyle(fontSize: 14, color: AppColors.black),
          ),
          SizedBox(
            height: 12.h,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 127.h,
                mainAxisSpacing: 12.h,
                crossAxisSpacing: 8.w,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  width: 160.w,
                  height: 127.h,
                  decoration: BoxDecoration(
                    color: AppColors.backGroundGray,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 24.r,
                        backgroundColor:
                            AppColors.primaryColor.withOpacity(0.1),
                        child: CustomSVGImage(
                            asset: customerServices[index].svgPath),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        customerServices[index].title,
                        style: getSemiboldTextStyle(
                            fontSize: 14, color: AppColors.black),
                      )
                    ],
                  ),
                );
              },
              itemCount: customerServices.length,
            ),
          ),
        ],
      ),
    );
  }
}
