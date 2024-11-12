import 'dart:developer';


import '../../../../../core/widgets/menu_item_form.dart';
import '../../../../../exports.dart';
import '../../../../auth/presentation/ui_manager/ui_auth_cubit.dart';
import 'account_types_model_data.dart';

class AccountTypeTabSelectTypeFormSection extends StatelessWidget {
  final UiAuthCubit uiAuthCubit;
  const AccountTypeTabSelectTypeFormSection(
      {super.key, required this.uiAuthCubit});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: !uiAuthCubit.isCustomer ? 1.0 : 0.0,
      child: Column(
        children: [
          Text(
            AppStrings.serviceTypeTitle,
            style: getRegularTextStyle(
              color: AppColors.veryDarkGray,
              fontSize: 12,
            ),
          ).alignCenterStart(),
          4.vs,
          ProviderServiceTypeTextFormField(
            suffixIcon: SvgDisplayer(
              assetName: AppAssets.arrowDown,
              fit: BoxFit.scaleDown,
            ),
            contentPadding: 12.pv + 16.ph,
            hintStyle: getRegularTextStyle(
              color: AppColors.richCharcoal,
              fontSize: 16,
            ),
            fillColor: AppColors.transparent,
            focusdBorderColor: AppColors.borderColor2,
            enabledBorderSideColor: AppColors.borderColor2,
            radius: 4,
            initialHintText: AppStrings.money,
            isEnabled: false,
            popupMenuItems: accountTypes,
            onMenuItemSelected: (selectedItem) {
              //! Handle the selected item
              log('Selected Service type: ${selectedItem.name}');
            },
          ),
        ],
      ),
    );
  }
}
