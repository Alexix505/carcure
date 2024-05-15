// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// This class defines the variables used in the [schedule_a_maintenance_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ScheduleAMaintenanceFourModel extends Equatable {
  ScheduleAMaintenanceFourModel({
    this.selectedTimeText,
    this.timeText = "00:00 PM",
  }) {
    selectedTimeText = selectedTimeText ?? TimeOfDay.now();
  }

  TimeOfDay? selectedTimeText;

  String timeText;

  ScheduleAMaintenanceFourModel copyWith({
    TimeOfDay? selectedTimeText,
    String? timeText,
  }) {
    return ScheduleAMaintenanceFourModel(
      selectedTimeText: selectedTimeText ?? this.selectedTimeText,
      timeText: timeText ?? this.timeText,
    );
  }

  @override
  List<Object?> get props => [selectedTimeText, timeText];
}
