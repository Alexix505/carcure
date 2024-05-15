// ignore_for_file: must_be_immutable

part of 'schedule_a_maintenance_three_notifier.dart';

/// Represents the state of ScheduleAMaintenanceThree in the application.
class ScheduleAMaintenanceThreeState extends Equatable {
  ScheduleAMaintenanceThreeState({
    this.selectedDatesFromCalendar1,
    this.scheduleAMaintenanceThreeModelObj,
  });

  ScheduleAMaintenanceThreeModel? scheduleAMaintenanceThreeModelObj;

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  List<Object?> get props => [
        selectedDatesFromCalendar1,
        scheduleAMaintenanceThreeModelObj,
      ];

  ScheduleAMaintenanceThreeState copyWith({
    List<DateTime?>? selectedDatesFromCalendar1,
    ScheduleAMaintenanceThreeModel? scheduleAMaintenanceThreeModelObj,
  }) {
    return ScheduleAMaintenanceThreeState(
      selectedDatesFromCalendar1:
          selectedDatesFromCalendar1 ?? this.selectedDatesFromCalendar1,
      scheduleAMaintenanceThreeModelObj: scheduleAMaintenanceThreeModelObj ??
          this.scheduleAMaintenanceThreeModelObj,
    );
  }
}
