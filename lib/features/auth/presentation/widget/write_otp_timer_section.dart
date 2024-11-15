import '../../../../exports.dart';

class WriteOtpTimerSection extends StatelessWidget {
  const WriteOtpTimerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 60.w,
        height: 24.h,
        decoration: BoxDecoration(
          color: AppColors.backGroundGray,
          borderRadius: BorderRadius.circular(14.5.r),
        ),
        child: Center(
          child: Text(
            '00:23',
            style: getRegularTextStyle(fontSize: 12, color: AppColors.gray),
          ),
        ),
      ),
    );
  }
}
