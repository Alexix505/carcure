// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [pick_up_summary_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PickUpSummaryModel extends Equatable {
  PickUpSummaryModel() {}

  PickUpSummaryModel copyWith() {
    return PickUpSummaryModel();
  }

  @override
  List<Object?> get props => [];
}
