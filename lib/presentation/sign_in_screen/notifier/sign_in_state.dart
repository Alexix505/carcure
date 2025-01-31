// ignore_for_file: must_be_immutable

part of 'sign_in_notifier.dart';

/// Represents the state of SignIn in the application.
class SignInState extends Equatable {
  SignInState({
    this.emailController,
    this.passwordController,
    this.rememberMe = false,
    this.signInModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignInModel? signInModelObj;

  bool rememberMe;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        rememberMe,
        signInModelObj,
      ];

  SignInState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? rememberMe,
    SignInModel? signInModelObj,
  }) {
    return SignInState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      rememberMe: rememberMe ?? this.rememberMe,
      signInModelObj: signInModelObj ?? this.signInModelObj,
    );
  }
}
