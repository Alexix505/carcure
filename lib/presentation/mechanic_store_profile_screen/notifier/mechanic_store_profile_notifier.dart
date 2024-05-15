import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fourteen_item_model.dart';
import '../models/frame_item_model.dart';
import 'package:carcure/presentation/mechanic_store_profile_screen/models/mechanic_store_profile_model.dart';
part 'mechanic_store_profile_state.dart';

final mechanicStoreProfileNotifier = StateNotifierProvider<
    MechanicStoreProfileNotifier, MechanicStoreProfileState>(
  (ref) => MechanicStoreProfileNotifier(MechanicStoreProfileState(
    mechanicStoreProfileModelObj: MechanicStoreProfileModel(fourteenItemList: [
      FourteenItemModel(textValue: "Quick Repair"),
      FourteenItemModel(textValue: "Pick Up\nMaintenance"),
      FourteenItemModel(textValue: "Drop Off\nMaintenance")
    ], frameItemList: List.generate(4, (index) => FrameItemModel())),
  )),
);

/// A notifier that manages the state of a MechanicStoreProfile according to the event that is dispatched to it.
class MechanicStoreProfileNotifier
    extends StateNotifier<MechanicStoreProfileState> {
  MechanicStoreProfileNotifier(MechanicStoreProfileState state)
      : super(state) {}
}
