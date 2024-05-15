// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [selectavehiclechipview_item_widget] screen.
class SelectavehiclechipviewItemModel extends Equatable {
  SelectavehiclechipviewItemModel({
    this.cla,
    this.isSelected,
  }) {
    cla = cla ?? "CLA";
    isSelected = isSelected ?? false;
  }

  String? cla;

  bool? isSelected;

  SelectavehiclechipviewItemModel copyWith({
    String? cla,
    bool? isSelected,
  }) {
    return SelectavehiclechipviewItemModel(
      cla: cla ?? this.cla,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [cla, isSelected];
}
