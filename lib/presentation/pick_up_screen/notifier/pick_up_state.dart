// ignore_for_file: must_be_immutable

part of 'pick_up_notifier.dart';

/// Represents the state of PickUp in the application.
class PickUpState extends Equatable {
  PickUpState({this.pickUpModelObj});

  PickUpModel? pickUpModelObj;

  @override
  List<Object?> get props => [
        pickUpModelObj,
      ];

  PickUpState copyWith({PickUpModel? pickUpModelObj}) {
    return PickUpState(
      pickUpModelObj: pickUpModelObj ?? this.pickUpModelObj,
    );
  }
}
