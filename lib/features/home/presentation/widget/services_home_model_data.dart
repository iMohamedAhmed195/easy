  import '../../../../exports.dart';
import '../../data/model/services_model.dart';

List<ServicesModel> customerServices = [
      ServicesModel(
        title: AppStrings().applyForALoan,
        svgPath: AppAssets.applyLoan,
        onTap: () => Routes.applyForLoanScreenRoute.moveTo(),
      ),
      ServicesModel(
        title: AppStrings.manageCards,
        svgPath: AppAssets.manageCard,
        onTap: () => Routes.applyForLoanScreenRoute.moveTo(),
      ),
      ServicesModel(
        title: AppStrings().loanRepayment,
        svgPath: AppAssets.replacementLoan,
        onTap: () => Routes.applyForLoanScreenRoute.moveTo(),
      ),
      ServicesModel(
        title: AppStrings().easyFuel,
        svgPath: AppAssets.easyFuel,
        onTap: () => Routes.applyForLoanScreenRoute.moveTo(),
      ),
    ];