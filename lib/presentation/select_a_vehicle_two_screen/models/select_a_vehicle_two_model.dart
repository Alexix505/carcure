// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'selectavehiclechipview_item_model.dart';

/// This class defines the variables used in the [select_a_vehicle_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectAVehicleTwoModel extends Equatable {
  SelectAVehicleTwoModel({this.selectavehiclechipviewItemList = const []}) {}

  List<SelectavehiclechipviewItemModel> selectavehiclechipviewItemList;

  SelectAVehicleTwoModel copyWith(
      {List<SelectavehiclechipviewItemModel>? selectavehiclechipviewItemList}) {
    return SelectAVehicleTwoModel(
      selectavehiclechipviewItemList:
          selectavehiclechipviewItemList ?? this.selectavehiclechipviewItemList,
    );
  }

  @override
  List<Object?> get props => [selectavehiclechipviewItemList];
}
