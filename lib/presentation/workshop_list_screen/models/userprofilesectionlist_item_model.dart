import '../../../core/app_export.dart';

/// This class is used in the [userprofilesectionlist_item_widget] screen.
class UserprofilesectionlistItemModel {
  UserprofilesectionlistItemModel({
    this.groupBy,
    this.id,
  }) {
    groupBy = groupBy ?? "";
    id = id ?? "";
  }

  String? groupBy;

  String? id;
}
