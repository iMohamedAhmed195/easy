  import 'package:easy/features/explore_screen/presentation/widgets/filter_modal_section.dart';

import '../../../../exports.dart';

void showFilterModalSection(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      builder: (context) => const FilterModalSection(),
    );
  }