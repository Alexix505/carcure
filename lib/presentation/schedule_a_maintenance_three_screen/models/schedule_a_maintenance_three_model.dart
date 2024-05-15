// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// This class defines the variables used in the [schedule_a_maintenance_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ScheduleAMaintenanceThreeModel extends Equatable {
  ScheduleAMaintenanceThreeModel({
    this.selectedTimeText,
    this.timeText = "00:00 PM",
    this.selectedTimeText1,
    this.timeText1 = "00:00 PM",
  }) {
    selectedTimeText = selectedTimeText ?? TimeOfDay.now();
    selectedTimeText1 = selectedTimeText1 ?? TimeOfDay.now();
  }

  TimeOfDay? selectedTimeText;

  String timeText;

  TimeOfDay? selectedTimeText1;

  String timeText1;

  ScheduleAMaintenanceThreeModel copyWith({
    TimeOfDay? selectedTimeText,
    String? timeText,
    TimeOfDay? selectedTimeText1,
    String? timeText1,
  }) {
    return ScheduleAMaintenanceThreeModel(
      selectedTimeText: selectedTimeText ?? this.selectedTimeText,
      timeText: timeText ?? this.timeText,
      selectedTimeText1: selectedTimeText1 ?? this.selectedTimeText1,
      timeText1: timeText1 ?? this.timeText1,
    );
  }

  @override
  List<Object?> get props =>
      [selectedTimeText, timeText, selectedTimeText1, timeText1];
}
