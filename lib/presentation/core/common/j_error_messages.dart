class JErrorMessages {
  JErrorMessages._();

  static const String emailInUse =
      'Seems like the email you provided is already in use.';
  static const String serverError = 'Seems there\'s a server error.';
  static const String invalidEmailOrPassword =
      'Oops! Looks like an invalid email or password.';
  static const String nameRequired = 'Your name is required';
  static const String emailRequired = 'Your email is required';
  static const String passwordRequired = 'Your password is required';
  static const String tooYoung = 'Donor must be older than 16 years of age.';
  static const String tooOld = 'Donor must be younger than 60 years of age.';
  static const String weightTooSmall = 'Donor must weigh more than 45kg.';
  static const String weightTooBig = 'Donor must not weigh more than 150kg.';
  static const String invalidAge = 'Oops! Invalid age';
  static const String invalidEmail = 'Oops! Invalid email';
  static const String invalidPhone = 'Oops! Invalid phone';
  static const String invalidPassword =
      'Password must contain: \n - Minimum 8 characters \n - At least 1 uppercase letter  \n - At least 1 digit  \n - At least 1 special character.';
  static const String usrNotFound = 'Oops! No user with this email exists.';
}
