// ignore_for_file: must_be_immutable

part of 'sign_up_notifier.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.fullNameController,
    this.emailController,
    this.phoneNumberController,
    this.selectedCountry,
    this.acceptTermsCheckBox = false,
    this.signUpModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  SignUpModel? signUpModelObj;

  Country? selectedCountry;

  bool acceptTermsCheckBox;

  @override
  List<Object?> get props => [
        fullNameController,
        emailController,
        phoneNumberController,
        selectedCountry,
        acceptTermsCheckBox,
        signUpModelObj,
      ];

  SignUpState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    bool? acceptTermsCheckBox,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      fullNameController: fullNameController ?? this.fullNameController,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      acceptTermsCheckBox: acceptTermsCheckBox ?? this.acceptTermsCheckBox,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
