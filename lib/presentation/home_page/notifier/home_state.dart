// ignore_for_file: must_be_immutable

part of 'home_notifier.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  HomeState({
    this.sliderIndex = 0,
    this.homeModelObj,
  });

  HomeModel? homeModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        homeModelObj,
      ];

  HomeState copyWith({
    int? sliderIndex,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}
