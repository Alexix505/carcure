import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carcure/presentation/drop_off_screen/models/drop_off_model.dart';
part 'drop_off_state.dart';

final dropOffNotifier = StateNotifierProvider<DropOffNotifier, DropOffState>(
  (ref) => DropOffNotifier(DropOffState(
    dropOffModelObj: DropOffModel(),
  )),
);

/// A notifier that manages the state of a DropOff according to the event that is dispatched to it.
class DropOffNotifier extends StateNotifier<DropOffState> {
  DropOffNotifier(DropOffState state) : super(state) {}
}
