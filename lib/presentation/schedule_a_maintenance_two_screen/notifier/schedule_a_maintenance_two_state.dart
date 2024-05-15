// ignore_for_file: must_be_immutable

part of 'schedule_a_maintenance_two_notifier.dart';

/// Represents the state of ScheduleAMaintenanceTwo in the application.
class ScheduleAMaintenanceTwoState extends Equatable {
  ScheduleAMaintenanceTwoState({this.scheduleAMaintenanceTwoModelObj});

  ScheduleAMaintenanceTwoModel? scheduleAMaintenanceTwoModelObj;

  @override
  List<Object?> get props => [
        scheduleAMaintenanceTwoModelObj,
      ];

  ScheduleAMaintenanceTwoState copyWith(
      {ScheduleAMaintenanceTwoModel? scheduleAMaintenanceTwoModelObj}) {
    return ScheduleAMaintenanceTwoState(
      scheduleAMaintenanceTwoModelObj: scheduleAMaintenanceTwoModelObj ??
          this.scheduleAMaintenanceTwoModelObj,
    );
  }
}
