// ignore_for_file: must_be_immutable

part of 'schedule_a_maintenance_one_notifier.dart';

/// Represents the state of ScheduleAMaintenanceOne in the application.
class ScheduleAMaintenanceOneState extends Equatable {
  ScheduleAMaintenanceOneState({this.scheduleAMaintenanceOneModelObj});

  ScheduleAMaintenanceOneModel? scheduleAMaintenanceOneModelObj;

  @override
  List<Object?> get props => [
        scheduleAMaintenanceOneModelObj,
      ];

  ScheduleAMaintenanceOneState copyWith(
      {ScheduleAMaintenanceOneModel? scheduleAMaintenanceOneModelObj}) {
    return ScheduleAMaintenanceOneState(
      scheduleAMaintenanceOneModelObj: scheduleAMaintenanceOneModelObj ??
          this.scheduleAMaintenanceOneModelObj,
    );
  }
}
