import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carcure/presentation/map_integration_screen/models/map_integration_model.dart';
part 'map_integration_state.dart';

final mapIntegrationNotifier =
    StateNotifierProvider<MapIntegrationNotifier, MapIntegrationState>(
  (ref) => MapIntegrationNotifier(MapIntegrationState(
    mapIntegrationModelObj: MapIntegrationModel(),
  )),
);

/// A notifier that manages the state of a MapIntegration according to the event that is dispatched to it.
class MapIntegrationNotifier extends StateNotifier<MapIntegrationState> {
  MapIntegrationNotifier(MapIntegrationState state) : super(state) {}
}
