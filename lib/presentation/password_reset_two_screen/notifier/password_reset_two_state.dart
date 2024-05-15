// ignore_for_file: must_be_immutable

part of 'password_reset_two_notifier.dart';

/// Represents the state of PasswordResetTwo in the application.
class PasswordResetTwoState extends Equatable {
  PasswordResetTwoState({
    this.passwordController,
    this.confirmpasswordController,
    this.passwordResetTwoModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  PasswordResetTwoModel? passwordResetTwoModelObj;

  @override
  List<Object?> get props => [
        passwordController,
        confirmpasswordController,
        passwordResetTwoModelObj,
      ];

  PasswordResetTwoState copyWith({
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    PasswordResetTwoModel? passwordResetTwoModelObj,
  }) {
    return PasswordResetTwoState(
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      passwordResetTwoModelObj:
          passwordResetTwoModelObj ?? this.passwordResetTwoModelObj,
    );
  }
}
