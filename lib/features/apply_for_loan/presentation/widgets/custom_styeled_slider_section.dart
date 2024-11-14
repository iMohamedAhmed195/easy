import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../../exports.dart';

class CustomStyeledSliderSection extends StatefulWidget {
  final String selectedLoanNumber;
  const CustomStyeledSliderSection(
      {super.key, required this.selectedLoanNumber});

  @override
  State<CustomStyeledSliderSection> createState() =>
      _CustomStyeledSliderSectionState();
}

class _CustomStyeledSliderSectionState
    extends State<CustomStyeledSliderSection> {
  double sliderValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return _customStyledSlider();
  }

  ////! Custom-styled slider with specified attributes
  Widget _customStyledSlider() {
    return SizedBox(
      height: 12.h,
      child: SfSliderTheme(
        data: SfSliderThemeData(
          overlayRadius: 0.r,
          activeTrackColor: AppColors.primaryColor,
          inactiveTrackColor: AppColors.softLightGray,
          thumbColor: AppColors.primaryColor,
          thumbStrokeWidth: 2.w,
          thumbStrokeColor: AppColors.white,
        ),
        child: SfSlider(
          min: 0.0,
          max: 100.0,
          value: sliderValue,
          onChanged: (newValue) {
            setState(() {
              sliderValue = newValue;
            });
          },
          onChangeEnd: (newValue) {
            setState(() {
              sliderValue = newValue;
              if (kDebugMode) {
                //! Print the value of Loan Amount Or Loan Term, to show how
                //! to use it later ...
                log("${widget.selectedLoanNumber}: $sliderValue");
              }
            });
          },
        ),
      ),
    );
  }
}
