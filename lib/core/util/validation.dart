String? validateEmail(String? value) {
  const emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (value == null || value.isEmpty) {
    return 'Please enter an email';
  } else {
    if (RegExp(emailRegex).hasMatch(value)) {
      return null;
    } else {
      return 'Please enter a valid email';
    }
  }
}
