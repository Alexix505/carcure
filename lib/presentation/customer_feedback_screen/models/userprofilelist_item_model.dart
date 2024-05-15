import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.userName,
    this.userDescription,
    this.description,
    this.id,
  }) {
    userName = userName ?? "Martin Kent";
    userDescription = userDescription ?? "2 days ago";
    description = description ??
        "Lorem ipsum dolor sit amet consectetur adipisc\ning elit dolor sit ame. Phasellus eu tellus eu nunc \nconvallis tempus eu ac orci. Sed quis euismoder \nlectus placerat.";
    id = id ?? "";
  }

  String? userName;

  String? userDescription;

  String? description;

  String? id;
}
