import '../../../../exports.dart';

class AnimatedToggleSwitchSection extends StatefulWidget {
  final bool isActive; //! Accept the initial state
  final Function(bool) onToggle; //! Accept a callback for toggle events

  const AnimatedToggleSwitchSection({
    super.key,
    required this.isActive,
    required this.onToggle,
  });

  @override
  State<AnimatedToggleSwitchSection> createState() =>
      _AnimatedToggleSwitchSectionState();
}

class _AnimatedToggleSwitchSectionState
    extends State<AnimatedToggleSwitchSection> {
  @override
  Widget build(BuildContext context) {
    bool isEnabled = widget.isActive;

    return GestureDetector(
      onTap: () {
        setState(() {
          isEnabled =
              !isEnabled; //! This local state change doesn't affect parent state
          widget.onToggle(isEnabled); //! Notify parent about the new state
        });
      },
      child: AnimatedContainer(
        height: 20.h,
        width: 40.w,
        duration: AppConstants.kCommonAnimationDuration,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: isEnabled
              ? AppColors.strongGreen
              : AppColors.strongGreenDisabledColor,
        ),
        child: AnimatedAlign(
          duration: AppConstants.kCommonAnimationDuration,
          alignment: isEnabled ? Alignment.centerRight : Alignment.centerLeft,
          child: Padding(
            padding: 2.allEdgeInsets,
            child: Container(
              width: 16.w,
              height: 16.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
