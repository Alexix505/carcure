import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carcure/presentation/create_password_screen/models/create_password_model.dart';
part 'create_password_state.dart';

final createPasswordNotifier =
    StateNotifierProvider<CreatePasswordNotifier, CreatePasswordState>(
  (ref) => CreatePasswordNotifier(CreatePasswordState(
    passwordController: TextEditingController(),
    passwordController1: TextEditingController(),
    rememberPassword: false,
    createPasswordModelObj: CreatePasswordModel(),
  )),
);

/// A notifier that manages the state of a CreatePassword according to the event that is dispatched to it.
class CreatePasswordNotifier extends StateNotifier<CreatePasswordState> {
  CreatePasswordNotifier(CreatePasswordState state) : super(state) {}

  void changeCheckBox1(bool value) {
    state = state.copyWith(rememberPassword: value);
  }
}
