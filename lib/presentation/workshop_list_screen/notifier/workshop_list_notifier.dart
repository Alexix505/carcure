import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilesectionlist_item_model.dart';
import 'package:carcure/presentation/workshop_list_screen/models/workshop_list_model.dart';
part 'workshop_list_state.dart';

final workshopListNotifier =
    StateNotifierProvider<WorkshopListNotifier, WorkshopListState>(
  (ref) => WorkshopListNotifier(WorkshopListState(
    workshopListModelObj: WorkshopListModel(userprofilesectionlistItemList: [
      UserprofilesectionlistItemModel(groupBy: "Favourites"),
      UserprofilesectionlistItemModel(groupBy: "Favourites"),
      UserprofilesectionlistItemModel(groupBy: "Workshop Near You")
    ]),
  )),
);

/// A notifier that manages the state of a WorkshopList according to the event that is dispatched to it.
class WorkshopListNotifier extends StateNotifier<WorkshopListState> {
  WorkshopListNotifier(WorkshopListState state) : super(state) {}
}
