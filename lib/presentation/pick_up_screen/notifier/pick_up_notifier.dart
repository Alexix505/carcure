import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carcure/presentation/pick_up_screen/models/pick_up_model.dart';
part 'pick_up_state.dart';

final pickUpNotifier = StateNotifierProvider<PickUpNotifier, PickUpState>(
  (ref) => PickUpNotifier(PickUpState(
    pickUpModelObj: PickUpModel(),
  )),
);

/// A notifier that manages the state of a PickUp according to the event that is dispatched to it.
class PickUpNotifier extends StateNotifier<PickUpState> {
  PickUpNotifier(PickUpState state) : super(state) {}
}
