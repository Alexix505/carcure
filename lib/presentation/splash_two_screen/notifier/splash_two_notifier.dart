import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carcure/presentation/splash_two_screen/models/splash_two_model.dart';
part 'splash_two_state.dart';

final splashTwoNotifier =
    StateNotifierProvider<SplashTwoNotifier, SplashTwoState>(
  (ref) => SplashTwoNotifier(SplashTwoState(
    splashTwoModelObj: SplashTwoModel(),
  )),
);

/// A notifier that manages the state of a SplashTwo according to the event that is dispatched to it.
class SplashTwoNotifier extends StateNotifier<SplashTwoState> {
  SplashTwoNotifier(SplashTwoState state) : super(state) {}
}
