import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

String? validateEmail(String value) {
  if (value == null || !value.isEmail) {
    return 'Please enter valid email'.tr;
  }
  return null;
}

bool isValidName(String value) {
  if (value == null || value.isEmpty) {
    return false;
  }
  if (!RegExp(r'^[A-Za-z0-9]+$').hasMatch(value)) {
    return false;
  }
  return true;
}

String? validatePassword(String value) {
  // print(value);
  if (value == null || value.isEmpty) {
    return 'Please enter valid Password'.tr;
  }

  return null;
}

String? validatesPassword(String? value) {
  String patternUppercase = r'(?=.*?[A-Z])';
  String patternLowercase = r'(?=.*?[a-z])';
  String patternDigits = r'(?=.*?[0-9])';
  String patternSpecialCharacter = r'(?=.*?[!@#\$&*~])';
  String patternMinLength = r'.{8,}';

  RegExp regexUppercase = RegExp(patternUppercase);
  RegExp regexLowercase = RegExp(patternLowercase);
  RegExp regexDigits = RegExp(patternDigits);
  RegExp regexSpecialCharacter = RegExp(patternSpecialCharacter);
  RegExp regexMinLength = RegExp(patternMinLength);

  String errorMessage = 'Password must have:';
  bool isValid = true;

  if (!regexUppercase.hasMatch(value!)) {
    isValid = false;
    errorMessage += '\n- At least 1 uppercase letter';
  }
  if (!regexLowercase.hasMatch(value)) {
    isValid = false;
    errorMessage += '\n- At least 1 lowercase letter';
  }
  if (!regexDigits.hasMatch(value)) {
    isValid = false;
    errorMessage += '\n- At least 1 number';
  }
  if (!regexSpecialCharacter.hasMatch(value)) {
    isValid = false;
    errorMessage += '\n- At least 1 special character (!@#\$&*~)';
  }
  if (!regexMinLength.hasMatch(value)) {
    isValid = false;
    errorMessage += '\n- Minimum 8 characters';
  }
  return isValid ? null : errorMessage;
}