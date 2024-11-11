import '../../../../exports.dart';
import '../widgets/account_type/setup_account_type_bloc_builder.dart';


class AccountTypeTabSection extends StatelessWidget {
  const AccountTypeTabSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SetupAccountTypeBlocBuilder(),
      ],
    );
  }
}
