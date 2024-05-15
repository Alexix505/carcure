// ignore_for_file: must_be_immutable

part of 'schedule_a_maintenance_notifier.dart';

/// Represents the state of ScheduleAMaintenance in the application.
class ScheduleAMaintenanceState extends Equatable {
  ScheduleAMaintenanceState({this.scheduleAMaintenanceModelObj});

  ScheduleAMaintenanceModel? scheduleAMaintenanceModelObj;

  @override
  List<Object?> get props => [
        scheduleAMaintenanceModelObj,
      ];

  ScheduleAMaintenanceState copyWith(
      {ScheduleAMaintenanceModel? scheduleAMaintenanceModelObj}) {
    return ScheduleAMaintenanceState(
      scheduleAMaintenanceModelObj:
          scheduleAMaintenanceModelObj ?? this.scheduleAMaintenanceModelObj,
    );
  }
}
