// ignore_for_file: must_be_immutable

part of 'pick_up_summary_notifier.dart';

/// Represents the state of PickUpSummary in the application.
class PickUpSummaryState extends Equatable {
  PickUpSummaryState({
    this.fullMaintenanceSchedulevalueController,
    this.pickUpSummaryModelObj,
  });

  TextEditingController? fullMaintenanceSchedulevalueController;

  PickUpSummaryModel? pickUpSummaryModelObj;

  @override
  List<Object?> get props => [
        fullMaintenanceSchedulevalueController,
        pickUpSummaryModelObj,
      ];

  PickUpSummaryState copyWith({
    TextEditingController? fullMaintenanceSchedulevalueController,
    PickUpSummaryModel? pickUpSummaryModelObj,
  }) {
    return PickUpSummaryState(
      fullMaintenanceSchedulevalueController:
          fullMaintenanceSchedulevalueController ??
              this.fullMaintenanceSchedulevalueController,
      pickUpSummaryModelObj:
          pickUpSummaryModelObj ?? this.pickUpSummaryModelObj,
    );
  }
}
