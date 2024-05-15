// ignore_for_file: must_be_immutable

part of 'drop_off_notifier.dart';

/// Represents the state of DropOff in the application.
class DropOffState extends Equatable {
  DropOffState({this.dropOffModelObj});

  DropOffModel? dropOffModelObj;

  @override
  List<Object?> get props => [
        dropOffModelObj,
      ];

  DropOffState copyWith({DropOffModel? dropOffModelObj}) {
    return DropOffState(
      dropOffModelObj: dropOffModelObj ?? this.dropOffModelObj,
    );
  }
}
