// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [sixtyfivechipview_item_widget] screen.
class SixtyfivechipviewItemModel extends Equatable {
  SixtyfivechipviewItemModel({
    String? frame,
    bool? isSelected,
  })  : frame = frame ?? "2023",
        isSelected = isSelected ?? false;

  String? frame;
  bool? isSelected;

  SixtyfivechipviewItemModel copyWith({
    String? frame,
    bool? isSelected,
  }) {
    return SixtyfivechipviewItemModel(
      frame: frame ?? this.frame,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  factory SixtyfivechipviewItemModel.initializeYears() {
    List<int> yearsList = List.generate(16, (index) => 2008 + index);

    return SixtyfivechipviewItemModel(
      frame: yearsList.first.toString(),
      isSelected: false,
    );
  }

  @override
  List<Object?> get props => [frame, isSelected];
}
