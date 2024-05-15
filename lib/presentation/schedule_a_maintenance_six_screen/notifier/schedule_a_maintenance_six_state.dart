// ignore_for_file: must_be_immutable

part of 'schedule_a_maintenance_six_notifier.dart';

/// Represents the state of ScheduleAMaintenanceSix in the application.
class ScheduleAMaintenanceSixState extends Equatable {
  ScheduleAMaintenanceSixState({
    this.timeController,
    this.scheduleAMaintenanceSixModelObj,
  });

  TextEditingController? timeController;

  ScheduleAMaintenanceSixModel? scheduleAMaintenanceSixModelObj;

  @override
  List<Object?> get props => [
        timeController,
        scheduleAMaintenanceSixModelObj,
      ];

  ScheduleAMaintenanceSixState copyWith({
    TextEditingController? timeController,
    ScheduleAMaintenanceSixModel? scheduleAMaintenanceSixModelObj,
  }) {
    return ScheduleAMaintenanceSixState(
      timeController: timeController ?? this.timeController,
      scheduleAMaintenanceSixModelObj: scheduleAMaintenanceSixModelObj ??
          this.scheduleAMaintenanceSixModelObj,
    );
  }
}
