// ignore_for_file: must_be_immutable

part of 'pick_up_summary_tab_container_notifier.dart';

/// Represents the state of PickUpSummaryTabContainer in the application.
class PickUpSummaryTabContainerState extends Equatable {
  PickUpSummaryTabContainerState({this.pickUpSummaryTabContainerModelObj});

  PickUpSummaryTabContainerModel? pickUpSummaryTabContainerModelObj;

  @override
  List<Object?> get props => [
        pickUpSummaryTabContainerModelObj,
      ];

  PickUpSummaryTabContainerState copyWith(
      {PickUpSummaryTabContainerModel? pickUpSummaryTabContainerModelObj}) {
    return PickUpSummaryTabContainerState(
      pickUpSummaryTabContainerModelObj: pickUpSummaryTabContainerModelObj ??
          this.pickUpSummaryTabContainerModelObj,
    );
  }
}
