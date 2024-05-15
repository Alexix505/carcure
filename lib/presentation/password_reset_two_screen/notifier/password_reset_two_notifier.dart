import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carcure/presentation/password_reset_two_screen/models/password_reset_two_model.dart';
part 'password_reset_two_state.dart';

final passwordResetTwoNotifier =
    StateNotifierProvider<PasswordResetTwoNotifier, PasswordResetTwoState>(
  (ref) => PasswordResetTwoNotifier(PasswordResetTwoState(
    passwordController: TextEditingController(),
    confirmpasswordController: TextEditingController(),
    passwordResetTwoModelObj: PasswordResetTwoModel(),
  )),
);

/// A notifier that manages the state of a PasswordResetTwo according to the event that is dispatched to it.
class PasswordResetTwoNotifier extends StateNotifier<PasswordResetTwoState> {
  PasswordResetTwoNotifier(PasswordResetTwoState state) : super(state) {}
}
