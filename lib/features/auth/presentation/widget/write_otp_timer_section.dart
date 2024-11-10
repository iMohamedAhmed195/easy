import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:pinput/pinput.dart';

import '../../../../exports.dart';

class WriteOtpTimerSection extends StatelessWidget {
  const WriteOtpTimerSection({super.key});

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
                  textStyle:getRegularTextStyle(fontSize: 36,color: AppColors.black),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.black),
                    borderRadius: BorderRadius.circular(10.r),
                  )),
              focusedPinTheme: PinTheme(
                  width: 76.w,
                  height: 76.h,
                  textStyle: getRegularTextStyle(fontSize: 36,color: AppColors.green),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.green),
                    borderRadius: BorderRadius.circular(10.r),
                  )),
              followingPinTheme:PinTheme(
                  width: 76.w,
                  height: 76.h,
                  textStyle: getRegularTextStyle(fontSize: 36,color: AppColors.black),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.black),
                    borderRadius: BorderRadius.circular(10.r),
                  )),
              submittedPinTheme:PinTheme(
                  width: 76.w,
                  height: 76.h,
                  textStyle: getRegularTextStyle(fontSize: 36,color: AppColors.green),
                  decoration: BoxDecoration(
                    color:AppColors.green.withOpacity(0.1) ,
                    border: Border.all(color: AppColors.green),
                    borderRadius: BorderRadius.circular(10.r),
                  )),
              onCompleted: (value) {

                if (kDebugMode) {
                  log(value);
                }
              },
            ),
          ),
        ),
        SizedBox(height: 32.h,),
        Container(
          width: 60.w,
          height: 24.h,
          decoration: BoxDecoration(
            color: AppColors.backGroundGray,
            borderRadius: BorderRadius.circular(14.5.r),
          ),
          child: Center(
            child: Text(
              '00:23',
              style: getRegularTextStyle(fontSize: 12,color: AppColors.gray),
            ),
          ),
        )
      ],
    );
  }
}
