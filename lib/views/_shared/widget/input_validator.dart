class InputValidator {

  static bool isNotEmpty(String text) {
    return (text.trim().isEmpty) ? false : true;
  }

  static bool isValidMobileNumber(String number) {

    RegExp regExp = RegExp(
      r"^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$",
      caseSensitive: false,
      multiLine: false,
    );

    return regExp.hasMatch(number) ? true : false;
  }

  static String? validatePhoneNumber(String? text) {
    if (!isNotEmpty(text!.trim())) {
      return 'Phone number required';
    }
    if (!isValidMobileNumber(text.trim())) {
      return "Incorrect phone number";
    }
  }

}