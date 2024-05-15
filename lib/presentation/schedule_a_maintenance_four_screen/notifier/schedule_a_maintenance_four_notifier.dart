import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carcure/presentation/schedule_a_maintenance_four_screen/models/schedule_a_maintenance_four_model.dart';
part 'schedule_a_maintenance_four_state.dart';

final scheduleAMaintenanceFourNotifier = StateNotifierProvider<
        ScheduleAMaintenanceFourNotifier, ScheduleAMaintenanceFourState>(
    (ref) => ScheduleAMaintenanceFourNotifier(ScheduleAMaintenanceFourState(
        timeController: TextEditingController(),
        scheduleAMaintenanceFourModelObj: ScheduleAMaintenanceFourModel())));

/// A notifier that manages the state of a ScheduleAMaintenanceFour according to the event that is dispatched to it.
class ScheduleAMaintenanceFourNotifier
    extends StateNotifier<ScheduleAMaintenanceFourState> {
  ScheduleAMaintenanceFourNotifier(ScheduleAMaintenanceFourState state)
      : super(state);
}
