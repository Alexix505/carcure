// ignore_for_file: must_be_immutable

part of 'email_verification_notifier.dart';

/// Represents the state of EmailVerification in the application.
class EmailVerificationState extends Equatable {
  EmailVerificationState({
    this.otpController,
    this.emailVerificationModelObj,
  });

  TextEditingController? otpController;

  EmailVerificationModel? emailVerificationModelObj;

  @override
  List<Object?> get props => [
        otpController,
        emailVerificationModelObj,
      ];

  EmailVerificationState copyWith({
    TextEditingController? otpController,
    EmailVerificationModel? emailVerificationModelObj,
  }) {
    return EmailVerificationState(
      otpController: otpController ?? this.otpController,
      emailVerificationModelObj:
          emailVerificationModelObj ?? this.emailVerificationModelObj,
    );
  }
}
