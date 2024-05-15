import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carcure/presentation/splash_three_screen/models/splash_three_model.dart';
part 'splash_three_state.dart';

final splashThreeNotifier =
    StateNotifierProvider<SplashThreeNotifier, SplashThreeState>((ref) =>
        SplashThreeNotifier(
            SplashThreeState(splashThreeModelObj: SplashThreeModel())));

/// A notifier that manages the state of a SplashThree according to the event that is dispatched to it.
class SplashThreeNotifier extends StateNotifier<SplashThreeState> {
  SplashThreeNotifier(SplashThreeState state) : super(state);
}
