import 'package:easy/exports.dart';

class PrivacyItemModel {
  final String title;
  final Widget? trailingIconData;
  final String leadingIconData;

  PrivacyItemModel({
    required this.title,
    this.trailingIconData,
    required this.leadingIconData,
  });
}
