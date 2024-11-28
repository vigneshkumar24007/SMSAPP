class T_Validation {
  static String? Validateempty(String? fieldname, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldname is required.';
    }
    return null;
  }

  static String? Validation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is Required';
    }
    final emailExp =
        RegExp('/^WS{1,2}:\/\/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}:56789/i');
    if (!emailExp.hasMatch(value)) {
      return 'invalid email address';
    }
    return null;
  }

  static String? validatepassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is Required';
    }
    if (value.length > 6) {
      return ' Password must be 6 characters';
    }
  }

  static String? validatephonenumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'value cant be empty';
    } else if (value == 10) {
      return null;
    }
  }
}
