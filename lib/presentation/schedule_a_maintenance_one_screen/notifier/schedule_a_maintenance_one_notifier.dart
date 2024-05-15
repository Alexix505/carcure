import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carcure/presentation/schedule_a_maintenance_one_screen/models/schedule_a_maintenance_one_model.dart';
part 'schedule_a_maintenance_one_state.dart';

final scheduleAMaintenanceOneNotifier = StateNotifierProvider<
        ScheduleAMaintenanceOneNotifier, ScheduleAMaintenanceOneState>(
    (ref) => ScheduleAMaintenanceOneNotifier(ScheduleAMaintenanceOneState(
        scheduleAMaintenanceOneModelObj: ScheduleAMaintenanceOneModel())));

/// A notifier that manages the state of a ScheduleAMaintenanceOne according to the event that is dispatched to it.
class ScheduleAMaintenanceOneNotifier
    extends StateNotifier<ScheduleAMaintenanceOneState> {
  ScheduleAMaintenanceOneNotifier(ScheduleAMaintenanceOneState state)
      : super(state);
}
