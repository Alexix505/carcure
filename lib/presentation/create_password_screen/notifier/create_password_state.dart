// ignore_for_file: must_be_immutable

part of 'create_password_notifier.dart';

/// Represents the state of CreatePassword in the application.
class CreatePasswordState extends Equatable {
  CreatePasswordState({
    this.passwordController,
    this.passwordController1,
    this.rememberPassword = false,
    this.createPasswordModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? passwordController1;

  CreatePasswordModel? createPasswordModelObj;

  bool rememberPassword;

  @override
  List<Object?> get props => [
        passwordController,
        passwordController1,
        rememberPassword,
        createPasswordModelObj,
      ];

  CreatePasswordState copyWith({
    TextEditingController? passwordController,
    TextEditingController? passwordController1,
    bool? rememberPassword,
    CreatePasswordModel? createPasswordModelObj,
  }) {
    return CreatePasswordState(
      passwordController: passwordController ?? this.passwordController,
      passwordController1: passwordController1 ?? this.passwordController1,
      rememberPassword: rememberPassword ?? this.rememberPassword,
      createPasswordModelObj:
          createPasswordModelObj ?? this.createPasswordModelObj,
    );
  }
}
