// ignore_for_file: must_be_immutable

part of 'mechanic_store_profile_notifier.dart';

/// Represents the state of MechanicStoreProfile in the application.
class MechanicStoreProfileState extends Equatable {
  MechanicStoreProfileState({this.mechanicStoreProfileModelObj});

  MechanicStoreProfileModel? mechanicStoreProfileModelObj;

  @override
  List<Object?> get props => [
        mechanicStoreProfileModelObj,
      ];

  MechanicStoreProfileState copyWith(
      {MechanicStoreProfileModel? mechanicStoreProfileModelObj}) {
    return MechanicStoreProfileState(
      mechanicStoreProfileModelObj:
          mechanicStoreProfileModelObj ?? this.mechanicStoreProfileModelObj,
    );
  }
}
