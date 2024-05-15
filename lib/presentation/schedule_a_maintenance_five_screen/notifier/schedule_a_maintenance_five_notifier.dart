import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carcure/presentation/schedule_a_maintenance_five_screen/models/schedule_a_maintenance_five_model.dart';
part 'schedule_a_maintenance_five_state.dart';

final scheduleAMaintenanceFiveNotifier = StateNotifierProvider<
    ScheduleAMaintenanceFiveNotifier, ScheduleAMaintenanceFiveState>(
  (ref) => ScheduleAMaintenanceFiveNotifier(ScheduleAMaintenanceFiveState(
    addressInputController: TextEditingController(),
    stateInputController: TextEditingController(),
    alternativeContactInputController: TextEditingController(),
    scheduleAMaintenanceFiveModelObj: ScheduleAMaintenanceFiveModel(),
  )),
);

/// A notifier that manages the state of a ScheduleAMaintenanceFive according to the event that is dispatched to it.
class ScheduleAMaintenanceFiveNotifier
    extends StateNotifier<ScheduleAMaintenanceFiveState> {
  ScheduleAMaintenanceFiveNotifier(ScheduleAMaintenanceFiveState state)
      : super(state) {}
}
