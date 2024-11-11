import '../../../../exports.dart';
import '../widgets/account_type/setup_account_type_bloc_builder.dart';

class AccountTypeTabSection extends StatelessWidget {
  const AccountTypeTabSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 16.ph,
      child: const SingleChildScrollView(
        child: SetupAccountTypeBlocBuilder(),
      ),
    );
  }
}
