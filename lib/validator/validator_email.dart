import 'package:email_validator/email_validator.dart';
import 'package:formz/formz.dart';

enum EmailValidationError { invalid }

class EmailInput extends FormzInput<String, EmailValidationError> {
  const EmailInput.pure() : super.pure('');

  const EmailInput.dirty([String value = '']) : super.dirty(value);

  @override
  EmailValidationError? validator(String value) {
    return EmailValidator.validate(value)
        ? null
        : EmailValidationError.invalid;
  }
}
