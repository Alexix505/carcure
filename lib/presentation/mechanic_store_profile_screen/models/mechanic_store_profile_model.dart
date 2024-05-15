// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'fourteen_item_model.dart';
import 'frame_item_model.dart';

/// This class defines the variables used in the [mechanic_store_profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MechanicStoreProfileModel extends Equatable {
  MechanicStoreProfileModel({
    this.fourteenItemList = const [],
    this.frameItemList = const [],
  }) {}

  List<FourteenItemModel> fourteenItemList;

  List<FrameItemModel> frameItemList;

  MechanicStoreProfileModel copyWith({
    List<FourteenItemModel>? fourteenItemList,
    List<FrameItemModel>? frameItemList,
  }) {
    return MechanicStoreProfileModel(
      fourteenItemList: fourteenItemList ?? this.fourteenItemList,
      frameItemList: frameItemList ?? this.frameItemList,
    );
  }

  @override
  List<Object?> get props => [fourteenItemList, frameItemList];
}
