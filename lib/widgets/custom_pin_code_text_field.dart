import 'package:carcure/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
        appContext: context,
        controller: controller,
        length: 4,
        keyboardType: TextInputType.number,
        textStyle: textStyle ?? theme.textTheme.headlineLarge,
        hintStyle: hintStyle ?? theme.textTheme.headlineLarge,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        pinTheme: PinTheme(
          fieldHeight: 50.h,
          fieldWidth: 52.h,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(10.h),
          inactiveColor: appTheme.gray900,
          activeColor: appTheme.gray900,
          selectedColor: Colors.transparent,
        ),
        onChanged: (value) => onChanged(value),
        validator: validator,
      );
}
