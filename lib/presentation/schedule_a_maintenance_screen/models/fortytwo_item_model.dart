import '../../../core/app_export.dart';

/// This class is used in the [fortytwo_item_widget] screen.
class FortytwoItemModel {
  FortytwoItemModel({
    this.groupBy,
    this.id,
  }) {
    groupBy = groupBy ?? "";
    id = id ?? "";
  }

  String? groupBy;

  String? id;
}
