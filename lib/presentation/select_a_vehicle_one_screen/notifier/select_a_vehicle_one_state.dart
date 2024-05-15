// ignore_for_file: must_be_immutable

part of 'select_a_vehicle_one_notifier.dart';

/// Represents the state of SelectAVehicleOne in the application.
class SelectAVehicleOneState extends Equatable {
  SelectAVehicleOneState({
    this.searchController,
    this.selectAVehicleOneModelObj,
  });

  TextEditingController? searchController;

  SelectAVehicleOneModel? selectAVehicleOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        selectAVehicleOneModelObj,
      ];

  SelectAVehicleOneState copyWith({
    TextEditingController? searchController,
    SelectAVehicleOneModel? selectAVehicleOneModelObj,
  }) {
    return SelectAVehicleOneState(
      searchController: searchController ?? this.searchController,
      selectAVehicleOneModelObj:
          selectAVehicleOneModelObj ?? this.selectAVehicleOneModelObj,
    );
  }
}
