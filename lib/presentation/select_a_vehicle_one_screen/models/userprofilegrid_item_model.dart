import '../../../core/app_export.dart';

/// This class is used in the [userprofilegrid_item_widget] screen.
class UserprofilegridItemModel {
  UserprofilegridItemModel({
    this.userImage,
    this.userName,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgImage2;
    userName = userName ?? "Mercedes";
    id = id ?? "";
  }

  String? userImage;

  String? userName;

  String? id;
}
