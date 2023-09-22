// ignore_for_file: body_might_complete_normally_nullable

import 'package:connect_me/utils/utils.dart';
import 'package:flutter/cupertino.dart';

String? validateEmail(String? formEmail,BuildContext context) {
  if (formEmail == null || formEmail.isEmpty)
    return Utils.toastMessage("Email is required", context);

  String pattern = r'\w+@\w+\.\w+';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(formEmail))
    return Utils.toastMessage("Invalid E-mail Address format.", context);

  return null;
}

String? validateusername(String? name) {
  if (name == null || name.isEmpty)
    return 'Username is required.';
  else {
    return null;
  }
}


String? validatePhoneNumber(String value) {
  if (value.isEmpty) {
    return 'Phone number is required.';
  }

  if (value.length != 10) {
    return 'Phone number should be 10 characters.';
  }

  final RegExp phoneRegex = RegExp(r'^[0-9]+$');
  if (!phoneRegex.hasMatch(value)) {
    return 'Invalid phone number format. Only numeric characters are allowed.';
  }

  return null;
}

String? validatePricreNumber(String value) {
  if (value.isEmpty) {
    return 'Price is required.';
  }

  final RegExp phoneRegex = RegExp(r'^[0-9]+$');
  if (!phoneRegex.hasMatch(value)) {
    return 'Invalid phone number format. Only numeric characters are allowed.';
  }

  return null; // Return null if the value passes all validations.
}

String? validateCnicNumber(String value) {
  if (value.isEmpty) {
    return 'Cnic number is required.';
  }

  if (value.length != 13 ) {
    return 'Cnic number should be 13 characters.';
  }

  final RegExp phoneRegex = RegExp(r'^[0-9]+$');
  if (!phoneRegex.hasMatch(value)) {
    return 'Invalid cnic number format. Only numeric characters are allowed.';
  }

  return null; // Return null if the value passes all validations.
}

String? validatePassword(String value,BuildContext context) {
  if (value.isEmpty) {
    return Utils.toastMessage("Password is required.", context);
  }

  if (value.length < 6) {
    return Utils.toastMessage("Password should have more than 6 characters.", context);
  }

  final RegExp letterRegex = RegExp(r'[a-zA-Z]');
  final RegExp digitRegex = RegExp(r'[0-9]');

  if (!letterRegex.hasMatch(value) || !digitRegex.hasMatch(value)) {
    return Utils.toastMessage("Password both letters and numbers.", context);

  }

  if (int.tryParse(value) != null) {
    return Utils.toastMessage("Password cannot consist only of numbers.", context);
  }

  return null; // Return null if the value passes all validations.
}

String? validateconfirmPassword(String password,value,) {
  if (value.isEmpty) {
    return 'Password is required.';
  }else if(password != value){
    return ("Password can't same");
  }

  return null; // Return null if the value passes all validations.
}
