import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carcure/presentation/splash_four_screen/models/splash_four_model.dart';
part 'splash_four_state.dart';

final splashFourNotifier =
    StateNotifierProvider<SplashFourNotifier, SplashFourState>((ref) =>
        SplashFourNotifier(
            SplashFourState(splashFourModelObj: SplashFourModel())));

/// A notifier that manages the state of a SplashFour according to the event that is dispatched to it.
class SplashFourNotifier extends StateNotifier<SplashFourState> {
  SplashFourNotifier(SplashFourState state) : super(state);
}
