// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofileslider_item_model.dart';
import 'viewlist_item_model.dart';
import 'quickrepairlist_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.userprofilesliderItemList = const [],
    this.viewlistItemList = const [],
    this.quickrepairlistItemList = const [],
  }) {}

  List<UserprofilesliderItemModel> userprofilesliderItemList;

  List<ViewlistItemModel> viewlistItemList;

  List<QuickrepairlistItemModel> quickrepairlistItemList;

  HomeModel copyWith({
    List<UserprofilesliderItemModel>? userprofilesliderItemList,
    List<ViewlistItemModel>? viewlistItemList,
    List<QuickrepairlistItemModel>? quickrepairlistItemList,
  }) {
    return HomeModel(
      userprofilesliderItemList:
          userprofilesliderItemList ?? this.userprofilesliderItemList,
      viewlistItemList: viewlistItemList ?? this.viewlistItemList,
      quickrepairlistItemList:
          quickrepairlistItemList ?? this.quickrepairlistItemList,
    );
  }

  @override
  List<Object?> get props =>
      [userprofilesliderItemList, viewlistItemList, quickrepairlistItemList];
}
