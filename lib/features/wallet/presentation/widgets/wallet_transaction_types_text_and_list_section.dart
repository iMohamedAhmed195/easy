import 'dart:developer';

import 'package:flutter/foundation.dart';

import '../../../../exports.dart';
import 'transaction_types_model_data.dart';

class WalletTransactionTypesTextAndListSection extends StatelessWidget {
  const WalletTransactionTypesTextAndListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.transactionsTitle,
          style: getSemiBoldTextStyle(
            color: AppColors.richCharcoal,
            fontSize: 14,
          ),
        ).alignCenterStart(),
        12.vs,
        SizedBox(
          //! TODO: In this section, we will implement filtering
          //! functionality to process the data.
          height: 32.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              transactionTypes.length,
              (index) {
                final transactionType = transactionTypes[index];
                return Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12.w, 0),
                  child: GestureDetector(
                    onTap: () {
                      if (kDebugMode) {
                        log("Selected transaction type: ${transactionType.name}");
                      }
                    },
                    child: Container(
                      padding: 8.pv + 24.ph,
                      decoration: ShapeDecoration(
                        color: AppColors.softCloudBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            transactionType.name,
                            textAlign: TextAlign.center,
                            style: getSemiBoldTextStyle(
                              fontSize: 12,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
