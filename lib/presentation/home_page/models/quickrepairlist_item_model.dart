import '../../../core/app_export.dart';

/// This class is used in the [quickrepairlist_item_widget] screen.
class QuickrepairlistItemModel {
  QuickrepairlistItemModel({
    this.quickRepair,
    this.id,
  }) {
    quickRepair = quickRepair ?? "Quick \nRepair";
    id = id ?? "";
  }

  String? quickRepair;

  String? id;
}
