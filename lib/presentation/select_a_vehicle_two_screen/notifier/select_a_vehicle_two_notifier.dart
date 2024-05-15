import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/selectavehiclechipview_item_model.dart';
import 'package:carcure/presentation/select_a_vehicle_two_screen/models/select_a_vehicle_two_model.dart';
part 'select_a_vehicle_two_state.dart';

final selectAVehicleTwoNotifier =
    StateNotifierProvider<SelectAVehicleTwoNotifier, SelectAVehicleTwoState>(
        (ref) => SelectAVehicleTwoNotifier(SelectAVehicleTwoState(
            searchController: TextEditingController(),
            selectAVehicleTwoModelObj: SelectAVehicleTwoModel(
                selectavehiclechipviewItemList: List.generate(
                    20, (index) => SelectavehiclechipviewItemModel())))));

/// A notifier that manages the state of a SelectAVehicleTwo according to the event that is dispatched to it.
class SelectAVehicleTwoNotifier extends StateNotifier<SelectAVehicleTwoState> {
  SelectAVehicleTwoNotifier(SelectAVehicleTwoState state) : super(state);

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<SelectavehiclechipviewItemModel> newList =
        List<SelectavehiclechipviewItemModel>.from(
            state.selectAVehicleTwoModelObj!.selectavehiclechipviewItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        selectAVehicleTwoModelObj: state.selectAVehicleTwoModelObj
            ?.copyWith(selectavehiclechipviewItemList: newList));
  }
}
