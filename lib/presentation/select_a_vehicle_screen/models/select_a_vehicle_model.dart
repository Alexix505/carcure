// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'sixtyfivechipview_item_model.dart';

/// This class defines the variables used in the [select_a_vehicle_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectAVehicleModel extends Equatable {
  SelectAVehicleModel({this.sixtyfivechipviewItemList = const []}) {}

  List<SixtyfivechipviewItemModel> sixtyfivechipviewItemList;

  SelectAVehicleModel copyWith(
      {List<SixtyfivechipviewItemModel>? sixtyfivechipviewItemList}) {
    return SelectAVehicleModel(
      sixtyfivechipviewItemList:
          sixtyfivechipviewItemList ?? this.sixtyfivechipviewItemList,
    );
  }

  @override
  List<Object?> get props => [sixtyfivechipviewItemList];
}
