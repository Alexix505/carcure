// ignore_for_file: must_be_immutable

part of 'schedule_a_maintenance_five_notifier.dart';

/// Represents the state of ScheduleAMaintenanceFive in the application.
class ScheduleAMaintenanceFiveState extends Equatable {
  ScheduleAMaintenanceFiveState({
    this.addressInputController,
    this.stateInputController,
    this.alternativeContactInputController,
    this.scheduleAMaintenanceFiveModelObj,
  });

  TextEditingController? addressInputController;

  TextEditingController? stateInputController;

  TextEditingController? alternativeContactInputController;

  ScheduleAMaintenanceFiveModel? scheduleAMaintenanceFiveModelObj;

  @override
  List<Object?> get props => [
        addressInputController,
        stateInputController,
        alternativeContactInputController,
        scheduleAMaintenanceFiveModelObj,
      ];

  ScheduleAMaintenanceFiveState copyWith({
    TextEditingController? addressInputController,
    TextEditingController? stateInputController,
    TextEditingController? alternativeContactInputController,
    ScheduleAMaintenanceFiveModel? scheduleAMaintenanceFiveModelObj,
  }) {
    return ScheduleAMaintenanceFiveState(
      addressInputController:
          addressInputController ?? this.addressInputController,
      stateInputController: stateInputController ?? this.stateInputController,
      alternativeContactInputController: alternativeContactInputController ??
          this.alternativeContactInputController,
      scheduleAMaintenanceFiveModelObj: scheduleAMaintenanceFiveModelObj ??
          this.scheduleAMaintenanceFiveModelObj,
    );
  }
}
