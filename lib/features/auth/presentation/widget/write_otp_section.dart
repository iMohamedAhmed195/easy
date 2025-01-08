import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:pinput/pinput.dart';

import '../../../../exports.dart';

class WriteOtpSection extends StatelessWidget {
  const WriteOtpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Pinput(
              length: 4,
              defaultPinTheme: PinTheme(
                width: 76.w,
                height: 76.h,
                textStyle:
                    getRegularTextStyle(fontSize: 36, color: AppColors.black),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.black),
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              focusedPinTheme: PinTheme(
                width: 76.w,
                height: 76.h,
                textStyle:
                    getRegularTextStyle(fontSize: 36, color: AppColors.green),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.green),
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              followingPinTheme: PinTheme(
                width: 76.w,
                height: 76.h,
                textStyle:
                    getRegularTextStyle(fontSize: 36, color: AppColors.black),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.black),
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              submittedPinTheme: PinTheme(
                width: 76.w,
                height: 76.h,
                textStyle:
                    getRegularTextStyle(fontSize: 36, color: AppColors.green),
                decoration: BoxDecoration(
                  color: AppColors.green.withOpacity(0.1),
                  border: Border.all(color: AppColors.green),
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              onCompleted: (value) {
                if (kDebugMode) {
                  log(value);
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
