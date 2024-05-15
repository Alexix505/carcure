import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carcure/presentation/pick_up_summary_page/models/pick_up_summary_model.dart';
part 'pick_up_summary_state.dart';

final pickUpSummaryNotifier =
    StateNotifierProvider<PickUpSummaryNotifier, PickUpSummaryState>(
  (ref) => PickUpSummaryNotifier(PickUpSummaryState(
    fullMaintenanceSchedulevalueController: TextEditingController(),
    pickUpSummaryModelObj: PickUpSummaryModel(),
  )),
);

/// A notifier that manages the state of a PickUpSummary according to the event that is dispatched to it.
class PickUpSummaryNotifier extends StateNotifier<PickUpSummaryState> {
  PickUpSummaryNotifier(PickUpSummaryState state) : super(state) {}
}
