// ignore_for_file: must_be_immutable

part of 'map_integration_notifier.dart';

/// Represents the state of MapIntegration in the application.
class MapIntegrationState extends Equatable {
  MapIntegrationState({this.mapIntegrationModelObj});

  MapIntegrationModel? mapIntegrationModelObj;

  @override
  List<Object?> get props => [
        mapIntegrationModelObj,
      ];

  MapIntegrationState copyWith({MapIntegrationModel? mapIntegrationModelObj}) {
    return MapIntegrationState(
      mapIntegrationModelObj:
          mapIntegrationModelObj ?? this.mapIntegrationModelObj,
    );
  }
}
