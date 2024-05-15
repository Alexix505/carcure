import '../../../core/app_export.dart';

/// This class is used in the [fourteen_item_widget] screen.
class FourteenItemModel {
  FourteenItemModel({
    this.textValue,
    this.id,
  }) {
    textValue = textValue ?? "Quick Repair";
    id = id ?? "";
  }

  String? textValue;

  String? id;
}
