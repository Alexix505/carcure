import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carcure/presentation/email_verification_screen/models/email_verification_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'email_verification_state.dart';

final emailVerificationNotifier =
    StateNotifierProvider<EmailVerificationNotifier, EmailVerificationState>(
  (ref) => EmailVerificationNotifier(EmailVerificationState(
    otpController: TextEditingController(),
    emailVerificationModelObj: EmailVerificationModel(),
  )),
);

/// A notifier that manages the state of a EmailVerification according to the event that is dispatched to it.
class EmailVerificationNotifier extends StateNotifier<EmailVerificationState>
    with CodeAutoFill {
  EmailVerificationNotifier(EmailVerificationState state) : super(state) {}

  @override
  void codeUpdated() {
    state.otpController?.text = code ?? '';
  }
}
