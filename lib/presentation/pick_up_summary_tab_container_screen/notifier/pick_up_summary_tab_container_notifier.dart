import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carcure/presentation/pick_up_summary_tab_container_screen/models/pick_up_summary_tab_container_model.dart';
part 'pick_up_summary_tab_container_state.dart';

final pickUpSummaryTabContainerNotifier = StateNotifierProvider<
    PickUpSummaryTabContainerNotifier, PickUpSummaryTabContainerState>(
  (ref) => PickUpSummaryTabContainerNotifier(PickUpSummaryTabContainerState(
    pickUpSummaryTabContainerModelObj: PickUpSummaryTabContainerModel(),
  )),
);

/// A notifier that manages the state of a PickUpSummaryTabContainer according to the event that is dispatched to it.
class PickUpSummaryTabContainerNotifier
    extends StateNotifier<PickUpSummaryTabContainerState> {
  PickUpSummaryTabContainerNotifier(PickUpSummaryTabContainerState state)
      : super(state) {}
}
