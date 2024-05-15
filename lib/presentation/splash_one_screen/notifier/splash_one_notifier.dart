import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carcure/presentation/splash_one_screen/models/splash_one_model.dart';
part 'splash_one_state.dart';

final splashOneNotifier =
    StateNotifierProvider<SplashOneNotifier, SplashOneState>((ref) =>
        SplashOneNotifier(SplashOneState(splashOneModelObj: SplashOneModel())));

/// A notifier that manages the state of a SplashOne according to the event that is dispatched to it.
class SplashOneNotifier extends StateNotifier<SplashOneState> {
  SplashOneNotifier(SplashOneState state) : super(state);
}
