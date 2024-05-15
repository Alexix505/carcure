import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:carcure/presentation/schedule_a_maintenance_two_screen/models/schedule_a_maintenance_two_model.dart';
part 'schedule_a_maintenance_two_state.dart';

final scheduleAMaintenanceTwoNotifier = StateNotifierProvider<
        ScheduleAMaintenanceTwoNotifier, ScheduleAMaintenanceTwoState>(
    (ref) => ScheduleAMaintenanceTwoNotifier(ScheduleAMaintenanceTwoState(
            scheduleAMaintenanceTwoModelObj:
                ScheduleAMaintenanceTwoModel(userprofileItemList: [
          UserprofileItemModel(
              brand: "Brand",
              loremIpsum: "Lorem ipsum",
              dueForService: "Due for Service"),
          UserprofileItemModel(
              brand: "Brand",
              loremIpsum: "Lorem ipsum",
              dueForService: "Due for Service"),
          UserprofileItemModel(
              brand: "Brand",
              loremIpsum: "Lorem ipsum",
              dueForService: "Due for Service")
        ]))));

/// A notifier that manages the state of a ScheduleAMaintenanceTwo according to the event that is dispatched to it.
class ScheduleAMaintenanceTwoNotifier
    extends StateNotifier<ScheduleAMaintenanceTwoState> {
  ScheduleAMaintenanceTwoNotifier(ScheduleAMaintenanceTwoState state)
      : super(state);
}
