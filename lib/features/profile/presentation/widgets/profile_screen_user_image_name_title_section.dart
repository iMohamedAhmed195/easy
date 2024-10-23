import '../../../../core/widgets/custom_user_image_with_circle.dart';
import '../../../../exports.dart';

class ProfileScreenUserImageNameTitleSection extends StatelessWidget {
  const ProfileScreenUserImageNameTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomUserImageWithCircle(),
        8.vs,
        Text(
          "Ahmed Adel",
          style: getSemiboldTextStyle(fontSize: 20),
        ),
        4.vs,
        Text(
          "Flutter Developer",
          style: getRegularTextStyle(fontSize: 14, color: AppColors.gray),
        ),
      ],
    );
  }
}
