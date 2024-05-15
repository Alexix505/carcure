import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carcure/presentation/schedule_a_maintenance_six_screen/models/schedule_a_maintenance_six_model.dart';
part 'schedule_a_maintenance_six_state.dart';

final scheduleAMaintenanceSixNotifier = StateNotifierProvider<
        ScheduleAMaintenanceSixNotifier, ScheduleAMaintenanceSixState>(
    (ref) => ScheduleAMaintenanceSixNotifier(ScheduleAMaintenanceSixState(
        timeController: TextEditingController(),
        scheduleAMaintenanceSixModelObj: ScheduleAMaintenanceSixModel())));

/// A notifier that manages the state of a ScheduleAMaintenanceSix according to the event that is dispatched to it.
class ScheduleAMaintenanceSixNotifier
    extends StateNotifier<ScheduleAMaintenanceSixState> {
  ScheduleAMaintenanceSixNotifier(ScheduleAMaintenanceSixState state)
      : super(state);
}
