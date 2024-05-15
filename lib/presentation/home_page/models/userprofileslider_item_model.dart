import '../../../core/app_export.dart';

/// This class is used in the [userprofileslider_item_widget] screen.
class UserprofilesliderItemModel {
  UserprofilesliderItemModel({
    this.plateNo,
    this.loremIpsum1,
    this.brand,
    this.loremIpsum2,
    this.prodYear,
    this.loremIpsum3,
    this.id,
  }) {
    plateNo = plateNo ?? "Plate No:";
    loremIpsum1 = loremIpsum1 ?? "Lorem ipsum";
    brand = brand ?? "Brand";
    loremIpsum2 = loremIpsum2 ?? "Lorem ipsum";
    prodYear = prodYear ?? "Prod Year";
    loremIpsum3 = loremIpsum3 ?? "Lorem ipsum";
    id = id ?? "";
  }

  String? plateNo;

  String? loremIpsum1;

  String? brand;

  String? loremIpsum2;

  String? prodYear;

  String? loremIpsum3;

  String? id;
}
