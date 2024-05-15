import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carcure/presentation/password_reset_screen/models/password_reset_model.dart';
part 'password_reset_state.dart';

final passwordResetNotifier =
    StateNotifierProvider<PasswordResetNotifier, PasswordResetState>(
  (ref) => PasswordResetNotifier(PasswordResetState(
    emailController: TextEditingController(),
    passwordResetModelObj: PasswordResetModel(),
  )),
);

/// A notifier that manages the state of a PasswordReset according to the event that is dispatched to it.
class PasswordResetNotifier extends StateNotifier<PasswordResetState> {
  PasswordResetNotifier(PasswordResetState state) : super(state) {}
}
