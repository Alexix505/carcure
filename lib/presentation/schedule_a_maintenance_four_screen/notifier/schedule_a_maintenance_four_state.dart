// ignore_for_file: must_be_immutable

part of 'schedule_a_maintenance_four_notifier.dart';

/// Represents the state of ScheduleAMaintenanceFour in the application.
class ScheduleAMaintenanceFourState extends Equatable {
  ScheduleAMaintenanceFourState({
    this.timeController,
    this.scheduleAMaintenanceFourModelObj,
  });

  TextEditingController? timeController;

  ScheduleAMaintenanceFourModel? scheduleAMaintenanceFourModelObj;

  @override
  List<Object?> get props => [
        timeController,
        scheduleAMaintenanceFourModelObj,
      ];

  ScheduleAMaintenanceFourState copyWith({
    TextEditingController? timeController,
    ScheduleAMaintenanceFourModel? scheduleAMaintenanceFourModelObj,
  }) {
    return ScheduleAMaintenanceFourState(
      timeController: timeController ?? this.timeController,
      scheduleAMaintenanceFourModelObj: scheduleAMaintenanceFourModelObj ??
          this.scheduleAMaintenanceFourModelObj,
    );
  }
}
