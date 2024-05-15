import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sixtyfivechipview_item_model.dart';
import 'package:carcure/presentation/select_a_vehicle_screen/models/select_a_vehicle_model.dart';
part 'select_a_vehicle_state.dart';

final selectAVehicleNotifier =
    StateNotifierProvider<SelectAVehicleNotifier, SelectAVehicleState>(
  (ref) => SelectAVehicleNotifier(SelectAVehicleState(
    selectAVehicleModelObj: SelectAVehicleModel(
        sixtyfivechipviewItemList:
            List.generate(16, (index) => SixtyfivechipviewItemModel())),
  )),
);

/// A notifier that manages the state of a SelectAVehicle according to the event that is dispatched to it.
class SelectAVehicleNotifier extends StateNotifier<SelectAVehicleState> {
  SelectAVehicleNotifier(SelectAVehicleState state) : super(state) {}

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<SixtyfivechipviewItemModel> newList =
        List<SixtyfivechipviewItemModel>.from(
            state.selectAVehicleModelObj!.sixtyfivechipviewItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        selectAVehicleModelObj: state.selectAVehicleModelObj
            ?.copyWith(sixtyfivechipviewItemList: newList));
  }
}
