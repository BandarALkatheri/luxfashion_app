class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    //reqular expression for emeail validation

    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    if (!emailRegex.hasMatch(value)) {
      return 'invalid email address';
    }
    return null;
  }

  static String? validatepassword(String? value) {
    if (value == null || value.isEmpty) {
      return ' password is required';
    }
    //checke for minimum password length
    if (value.length < 6) {
      return ' password must be at least 6 characters long';
    }
    //checke for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return ' password must contain at least one uppercase letter';
    }
    //checke for number
    if (!value.contains(RegExp(r'[0-9]'))) {
      return ' password must contain at least one number';
    }
    //checke for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return ' password must contain at least one number';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'phone number is required';
    }
    //reqular expression for phone number validation
    //custem validators as needed for ur specific requirements
    return null;
  }
}
