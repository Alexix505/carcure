// ignore_for_file: must_be_immutable

part of 'select_a_vehicle_two_notifier.dart';

/// Represents the state of SelectAVehicleTwo in the application.
class SelectAVehicleTwoState extends Equatable {
  SelectAVehicleTwoState({
    this.searchController,
    this.selectAVehicleTwoModelObj,
  });

  TextEditingController? searchController;

  SelectAVehicleTwoModel? selectAVehicleTwoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        selectAVehicleTwoModelObj,
      ];

  SelectAVehicleTwoState copyWith({
    TextEditingController? searchController,
    SelectAVehicleTwoModel? selectAVehicleTwoModelObj,
  }) {
    return SelectAVehicleTwoState(
      searchController: searchController ?? this.searchController,
      selectAVehicleTwoModelObj:
          selectAVehicleTwoModelObj ?? this.selectAVehicleTwoModelObj,
    );
  }
}
