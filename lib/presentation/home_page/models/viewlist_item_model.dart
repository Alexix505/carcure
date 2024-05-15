import '../../../core/app_export.dart';

/// This class is used in the [viewlist_item_widget] screen.
class ViewlistItemModel {
  ViewlistItemModel({
    this.quickRepair,
    this.id,
  }) {
    quickRepair = quickRepair ?? "Quick Repair";
    id = id ?? "";
  }

  String? quickRepair;

  String? id;
}
