import 'dart:developer';

import 'package:flutter/foundation.dart';

import '../../../../exports.dart';
import '../../model/manage_cards_drop_down_menu_model.dart';
import 'manage_cards_deatils_drop_down_menu_model_data.dart';

class ManageBankCardsTrailingIconMenuSection extends StatelessWidget {
  const ManageBankCardsTrailingIconMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<DropdownItem>(
      color: AppColors.white,
      icon: SvgDisplayer(
        assetName: AppAssets.dots,
        height: 24.h,
        width: 24.w,
      ),
      onSelected: (DropdownItem selectedItem) {
        //! Handle item selection
        if (kDebugMode) {
          log('Selected: ${selectedItem.value}');
        }
      },
      itemBuilder: (BuildContext context) {
        return dropdownItems.map((DropdownItem item) {
          int index = dropdownItems.indexOf(item); //! Get the index of the item
          return PopupMenuItem<DropdownItem>(
            value: item,
            child: Row(
              children: [
                SvgDisplayer(
                  assetName: item.icon,
                  height: 16.h,
                  width: 16.w,
                  svgIconColor:
                      index == 2 ? AppColors.red : AppColors.primaryColor,
                ),
                8.hs,
                Text(
                  item.name,
                  style: getSemiBoldTextStyle(
                    fontSize: 12.54,
                    color: index == 2 ? AppColors.red : AppColors.richCharcoal,
                  ),
                ),
              ],
            ),
          );
        }).toList();
      },
    );
  }
}
