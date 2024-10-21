import 'package:easy/core/widgets/setting_item.dart';

import '../../exports.dart';

class FilePickerDialog extends StatelessWidget {
  final bool isSelected;

  const FilePickerDialog({super.key, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isSelected)
            SettingItemWidget(
              title: AppStrings().removeImage,
              titleTextStyle: getRegularTextStyle(),
              leading: const Icon(Icons.close, color: AppColors.primaryColor),
              onTap: () {
                pop(GalleryFileTypes.REMOVE);
              },
            ),
          SettingItemWidget(
            title: AppStrings().camera,
            titleTextStyle: getRegularTextStyle(),
            leading: const Icon(Icons.camera_alt, color: AppColors.primaryColor),
            onTap: () {
              pop(GalleryFileTypes.CAMERA);
            },
          ),
          SettingItemWidget(
            title: AppStrings().gallery,
            titleTextStyle: getRegularTextStyle(),
            leading: const Icon(Icons.photo_library, color: AppColors.primaryColor),
            onTap: () {
              pop(GalleryFileTypes.GALLERY);
            },
          ),
        ],
      ),
    );
  }
}
