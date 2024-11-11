

import '../../../../../exports.dart';
import '../../../../auth/presentation/ui_manager/ui_auth_cubit.dart';
import '../../../../auth/presentation/ui_manager/ui_auth_state.dart';
import '../../../../auth/presentation/widget/account_type_section.dart';
import '../account_information_tabs_common_button_section.dart';
import 'account_type_tab_select_type_form_section.dart';

class SetupAccountTypeBlocBuilder extends StatelessWidget {
  const SetupAccountTypeBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UiAuthCubit, UiAuthState>(
      builder: (context, state) {
        final uiAuthCubit = context.read<UiAuthCubit>();
        return Padding(
          padding: 16.ph,
          child: SingleChildScrollView(
            child: Column(
              children: [
                16.vs,
                AccountTypeSection(uiAuthCubit: uiAuthCubit),
                16.vs,
                AccountTypeTabSelectTypeFormSection(uiAuthCubit: uiAuthCubit),
                322.vs,
                const AccountInformationTabsCommonButtonSection(),
              ],
            ),
          ),
        );
      },
    );
  }
}
