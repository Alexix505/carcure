import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:carcure/presentation/schedule_a_maintenance_three_screen/models/schedule_a_maintenance_three_model.dart';
part 'schedule_a_maintenance_three_state.dart';

final scheduleAMaintenanceThreeNotifier = StateNotifierProvider<
        ScheduleAMaintenanceThreeNotifier, ScheduleAMaintenanceThreeState>(
    (ref) => ScheduleAMaintenanceThreeNotifier(ScheduleAMaintenanceThreeState(
        selectedDatesFromCalendar1: [],
        scheduleAMaintenanceThreeModelObj: ScheduleAMaintenanceThreeModel())));

/// A notifier that manages the state of a ScheduleAMaintenanceThree according to the event that is dispatched to it.
class ScheduleAMaintenanceThreeNotifier
    extends StateNotifier<ScheduleAMaintenanceThreeState> {
  ScheduleAMaintenanceThreeNotifier(ScheduleAMaintenanceThreeState state)
      : super(state);
}
