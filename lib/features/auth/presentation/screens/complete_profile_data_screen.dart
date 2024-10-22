import 'package:easy/core/widgets/custom_background.dart';
import 'package:easy/core/widgets/custom_button.dart';
import 'package:easy/core/widgets/logo_app_bar_widget.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_cubit.dart';
import 'package:easy/features/auth/presentation/ui_manager/ui_auth_state.dart';
import 'package:easy/features/auth/presentation/widget/choose_service_bottom_sheet.dart';
import 'package:easy/features/auth/presentation/widget/complete_info_page_view_section.dart';
import 'package:easy/features/auth/presentation/widget/stepper_complete_info_section.dart';
import 'package:easy/features/auth/presentation/widget/welcome_section.dart';
import '../../../../exports.dart';

class CompleteProfileDataScreen extends StatefulWidget {
  const CompleteProfileDataScreen({super.key});

  @override
  State<CompleteProfileDataScreen> createState() =>
      _CompleteProfileDataScreenState();
}

class _CompleteProfileDataScreenState extends State<CompleteProfileDataScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UiAuthCubit, UiAuthState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () {
            context.read<UiAuthCubit>().changeDecreasePageIndex(
                index: context.read<UiAuthCubit>().nextPage - 1);
            return Future.value(false);
          },
          child: CustomBackground(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15.h,),
                  const LogoAppBarWidget(
                    isPop: true,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  WelcomeSection(
                    header: AppStrings().completeYourProfile,
                    subHeader: AppStrings().thisFormInclude,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  StepperCompleteInfoSection(
                    uiAuthCubit: context.read<UiAuthCubit>(),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  CompleteInfoPageViewSection(
                    uiAuthCubit: context.read<UiAuthCubit>(),
                  ),
                  CustomButton(
                      text: AppStrings().continueText,
                      onPressed: () {
                        if (context.read<UiAuthCubit>().nextPage == 2 &&
                            context.read<UiAuthCubit>().isCustomer) {
                          Routes.awesomeSuccessRoute.moveToWithArgs({
                            "header": AppStrings().congratulations,
                            "subHeader": AppStrings().accountCreated,
                            "buttonText": AppStrings().proceed,
                            "onPressed": () {
                               Routes.bottomNavigationRoute.moveTo();
                            }
                          });
                        } else if (context.read<UiAuthCubit>().nextPage == 2 &&
                            !context.read<UiAuthCubit>().isCustomer) {
                          oilOrMoneyBottomSheet(context);
                        }
                        context.read<UiAuthCubit>().changeIncreasePageIndex(
                            index: context.read<UiAuthCubit>().nextPage + 1);
                      }),
                  SizedBox(
                    height: 24.h,
                  ),
                ],
              ),
            ),
          )),
        );
      },
    );
  }

  Future<void> oilOrMoneyBottomSheet(BuildContext context) async {
    showModalBottomSheet(
        context: context,
        builder: (context) => const ChooseServiceBottomSheet());
  }
}
