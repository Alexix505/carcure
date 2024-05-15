// ignore_for_file: must_be_immutable

part of 'workshop_list_notifier.dart';

/// Represents the state of WorkshopList in the application.
class WorkshopListState extends Equatable {
  WorkshopListState({this.workshopListModelObj});

  WorkshopListModel? workshopListModelObj;

  @override
  List<Object?> get props => [
        workshopListModelObj,
      ];

  WorkshopListState copyWith({WorkshopListModel? workshopListModelObj}) {
    return WorkshopListState(
      workshopListModelObj: workshopListModelObj ?? this.workshopListModelObj,
    );
  }
}
