import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilegrid_item_model.dart';
import 'package:carcure/presentation/select_a_vehicle_one_screen/models/select_a_vehicle_one_model.dart';
part 'select_a_vehicle_one_state.dart';

final selectAVehicleOneNotifier =
    StateNotifierProvider<SelectAVehicleOneNotifier, SelectAVehicleOneState>(
        (ref) => SelectAVehicleOneNotifier(SelectAVehicleOneState(
            searchController: TextEditingController(),
            selectAVehicleOneModelObj:
                SelectAVehicleOneModel(userprofilegridItemList: [
              UserprofilegridItemModel(
                  userImage: ImageConstant.imgImage2, userName: "Mercedes"),
              UserprofilegridItemModel(
                  userImage: ImageConstant.imgImage3, userName: "Honda"),
              UserprofilegridItemModel(
                  userImage: ImageConstant.imgImage4, userName: "Toyota"),
              UserprofilegridItemModel(
                  userImage: ImageConstant.imgImage5, userName: "Volkswagen"),
              UserprofilegridItemModel(
                  userImage: ImageConstant.imgImage6, userName: "Chevrolet"),
              UserprofilegridItemModel(
                  userImage: ImageConstant.imgImage13, userName: "Peugeot"),
              UserprofilegridItemModel(
                  userImage: ImageConstant.imgImage10, userName: "Kia"),
              UserprofilegridItemModel(
                  userImage: ImageConstant.imgImage11, userName: "Jeep"),
              UserprofilegridItemModel(
                  userImage: ImageConstant.imgImage9, userName: "Hyundai"),
              UserprofilegridItemModel(
                  userImage: ImageConstant.imgImage7, userName: "BMW"),
              UserprofilegridItemModel(
                  userImage: ImageConstant.imgImage12, userName: "Lexus"),
              UserprofilegridItemModel(
                  userImage: ImageConstant.imgImage8, userName: "Ford")
            ]))));

/// A notifier that manages the state of a SelectAVehicleOne according to the event that is dispatched to it.
class SelectAVehicleOneNotifier extends StateNotifier<SelectAVehicleOneState> {
  SelectAVehicleOneNotifier(SelectAVehicleOneState state) : super(state);
}
