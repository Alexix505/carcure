// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'userprofilesectionlist_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [workshop_list_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WorkshopListModel extends Equatable {
  WorkshopListModel({
    this.userprofilesectionlistItemList = const [],
    this.favorite,
  }) {
    favorite = favorite ?? ImageConstant.imgFavorite;
  }

  List<UserprofilesectionlistItemModel> userprofilesectionlistItemList;

  String? favorite;

  WorkshopListModel copyWith({
    List<UserprofilesectionlistItemModel>? userprofilesectionlistItemList,
    String? favorite,
  }) {
    return WorkshopListModel(
      userprofilesectionlistItemList:
          userprofilesectionlistItemList ?? this.userprofilesectionlistItemList,
      favorite: favorite ?? this.favorite,
    );
  }

  @override
  List<Object?> get props => [userprofilesectionlistItemList, favorite];
}
