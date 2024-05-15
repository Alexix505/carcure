// ignore_for_file: must_be_immutable

part of 'select_a_vehicle_notifier.dart';

/// Represents the state of SelectAVehicle in the application.
class SelectAVehicleState extends Equatable {
  SelectAVehicleState({this.selectAVehicleModelObj});

  SelectAVehicleModel? selectAVehicleModelObj;

  @override
  List<Object?> get props => [
        selectAVehicleModelObj,
      ];

  SelectAVehicleState copyWith({SelectAVehicleModel? selectAVehicleModelObj}) {
    return SelectAVehicleState(
      selectAVehicleModelObj:
          selectAVehicleModelObj ?? this.selectAVehicleModelObj,
    );
  }
}
