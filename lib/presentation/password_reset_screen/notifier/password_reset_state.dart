// ignore_for_file: must_be_immutable

part of 'password_reset_notifier.dart';

/// Represents the state of PasswordReset in the application.
class PasswordResetState extends Equatable {
  PasswordResetState({
    this.emailController,
    this.passwordResetModelObj,
  });

  TextEditingController? emailController;

  PasswordResetModel? passwordResetModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordResetModelObj,
      ];

  PasswordResetState copyWith({
    TextEditingController? emailController,
    PasswordResetModel? passwordResetModelObj,
  }) {
    return PasswordResetState(
      emailController: emailController ?? this.emailController,
      passwordResetModelObj:
          passwordResetModelObj ?? this.passwordResetModelObj,
    );
  }
}
