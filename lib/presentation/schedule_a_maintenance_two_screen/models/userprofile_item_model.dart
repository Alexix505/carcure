import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.brand,
    this.loremIpsum,
    this.dueForService,
    this.id,
  }) {
    brand = brand ?? "Brand";
    loremIpsum = loremIpsum ?? "Lorem ipsum";
    dueForService = dueForService ?? "Due for Service";
    id = id ?? "";
  }

  String? brand;

  String? loremIpsum;

  String? dueForService;

  String? id;
}
