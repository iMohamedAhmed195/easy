import 'dart:developer';

import 'package:flutter/foundation.dart';

import '../../../../exports.dart';
import 'my_loans_types_list_itme_section.dart';
import 'my_loans_types_model_data.dart';

class MyLoansTypesListSection extends StatelessWidget {
  const MyLoansTypesListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.h,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            myLoansTypes.length,
            (index) {
              final myLoansTypesData = myLoansTypes[index];
              return Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12.w, 0),
                child: GestureDetector(
                  onTap: () {
                    if (kDebugMode) {
                      log("Selected transaction type: ${myLoansTypesData.name}");
                    }
                  },
                  child: MyLoansTypesListItmeSection(
                    myLoansTypesData: myLoansTypesData,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
