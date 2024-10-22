import 'package:easy/features/auth/presentation/ui_manager/ui_auth_cubit.dart';
import 'package:easy/features/auth/presentation/widgt/account_type_section.dart';
import 'package:easy/features/auth/presentation/widgt/address_info_section.dart';
import 'package:easy/features/auth/presentation/widgt/personal_info_section.dart';
import '../../../../exports.dart';

class CompleteInfoPageViewSection extends StatelessWidget {
  const CompleteInfoPageViewSection({super.key, required this.uiAuthCubit});
  final UiAuthCubit uiAuthCubit ;
  @override
  Widget build(BuildContext context) {
    List<Widget> completeInfoPageView = [
      const PersonalInfoSection(),
      const AddressInfoSection(),
       AccountTypeSection(uiAuthCubit: uiAuthCubit,),
    ];
    return Column(
      children: [
        SizedBox(
          height: 450.h,
          child: PageView.builder(
            controller: uiAuthCubit.pageController,
            itemCount:completeInfoPageView.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return completeInfoPageView[index];
            },
          ),
        ),

      ],
    );
  }
}
