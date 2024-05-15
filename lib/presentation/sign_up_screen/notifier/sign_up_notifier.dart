import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:carcure/presentation/sign_up_screen/models/sign_up_model.dart';
part 'sign_up_state.dart';

final signUpNotifier = StateNotifierProvider<SignUpNotifier, SignUpState>(
    (ref) => SignUpNotifier(SignUpState(
        fullNameController: TextEditingController(),
        emailController: TextEditingController(),
        phoneNumberController: TextEditingController(),
        selectedCountry: CountryPickerUtils.getCountryByPhoneCode('1'),
        acceptTermsCheckBox: false,
        signUpModelObj: SignUpModel())));

/// A notifier that manages the state of a SignUp according to the event that is dispatched to it.
class SignUpNotifier extends StateNotifier<SignUpState> {
  SignUpNotifier(SignUpState state) : super(state);

  void changeCheckBox1(bool value) {
    state = state.copyWith(acceptTermsCheckBox: value);
  }
}
