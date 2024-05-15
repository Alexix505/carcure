// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofilegrid_item_model.dart';

/// This class defines the variables used in the [select_a_vehicle_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectAVehicleOneModel extends Equatable {
  SelectAVehicleOneModel({this.userprofilegridItemList = const []}) {}

  List<UserprofilegridItemModel> userprofilegridItemList;

  SelectAVehicleOneModel copyWith(
      {List<UserprofilegridItemModel>? userprofilegridItemList}) {
    return SelectAVehicleOneModel(
      userprofilegridItemList:
          userprofilegridItemList ?? this.userprofilegridItemList,
    );
  }

  @override
  List<Object?> get props => [userprofilegridItemList];
}
