// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'fortytwo_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [schedule_a_maintenance_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ScheduleAMaintenanceModel extends Equatable {
  ScheduleAMaintenanceModel({
    this.fortytwoItemList = const [],
    this.favorite,
  }) {
    favorite = favorite ?? ImageConstant.imgFavorite;
  }

  List<FortytwoItemModel> fortytwoItemList;

  String? favorite;

  ScheduleAMaintenanceModel copyWith({
    List<FortytwoItemModel>? fortytwoItemList,
    String? favorite,
  }) {
    return ScheduleAMaintenanceModel(
      fortytwoItemList: fortytwoItemList ?? this.fortytwoItemList,
      favorite: favorite ?? this.favorite,
    );
  }

  @override
  List<Object?> get props => [fortytwoItemList, favorite];
}
