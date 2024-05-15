import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofileslider_item_model.dart';
import '../models/viewlist_item_model.dart';
import '../models/quickrepairlist_item_model.dart';
import 'package:carcure/presentation/home_page/models/home_model.dart';
part 'home_state.dart';

final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(HomeState(
    sliderIndex: 0,
    homeModelObj: HomeModel(userprofilesliderItemList: [
      UserprofilesliderItemModel(
          plateNo: "Plate No:",
          loremIpsum1: "Lorem ipsum",
          brand: "Brand",
          loremIpsum2: "Lorem ipsum",
          prodYear: "Prod Year",
          loremIpsum3: "Lorem ipsum"),
      UserprofilesliderItemModel(
          brand: "Brand",
          loremIpsum2: "Prod Year",
          prodYear: "Lorem ipsum",
          loremIpsum3: "Lorem ipsum")
    ], viewlistItemList: [
      ViewlistItemModel(quickRepair: "Quick Repair"),
      ViewlistItemModel(quickRepair: "Mechanic\nWorkshop"),
      ViewlistItemModel(quickRepair: "Scheduled\nMaintenance"),
      ViewlistItemModel(quickRepair: "Market")
    ], quickrepairlistItemList: [
      QuickrepairlistItemModel(quickRepair: "Quick \nRepair"),
      QuickrepairlistItemModel(quickRepair: "Schedule a \nMaintenance"),
      QuickrepairlistItemModel(quickRepair: "Schedule \nMaintenance")
    ]),
  )),
);

/// A notifier that manages the state of a Home according to the event that is dispatched to it.
class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(HomeState state) : super(state) {}
}
