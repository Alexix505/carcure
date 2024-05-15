import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fortytwo_item_model.dart';
import 'package:carcure/presentation/schedule_a_maintenance_screen/models/schedule_a_maintenance_model.dart';
part 'schedule_a_maintenance_state.dart';

final scheduleAMaintenanceNotifier = StateNotifierProvider<
    ScheduleAMaintenanceNotifier, ScheduleAMaintenanceState>(
  (ref) => ScheduleAMaintenanceNotifier(ScheduleAMaintenanceState(
    scheduleAMaintenanceModelObj: ScheduleAMaintenanceModel(fortytwoItemList: [
      FortytwoItemModel(groupBy: "Favourites"),
      FortytwoItemModel(groupBy: "Favourites"),
      FortytwoItemModel(groupBy: "Workshop Near You")
    ]),
  )),
);

/// A notifier that manages the state of a ScheduleAMaintenance according to the event that is dispatched to it.
class ScheduleAMaintenanceNotifier
    extends StateNotifier<ScheduleAMaintenanceState> {
  ScheduleAMaintenanceNotifier(ScheduleAMaintenanceState state)
      : super(state) {}
}
