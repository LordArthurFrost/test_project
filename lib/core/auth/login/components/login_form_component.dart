import 'package:flutter/material.dart';
import 'package:test_prohect/core/auth/login/screens/login_form_screen.dart';
import 'package:test_prohect/validator/validators.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(3),
        child: LoginFormWidget(),
      ),
    );
  }
}

class LoginFormWidget extends StatefulWidget {
  @override
  LoginFormWidgetState createState() {
    return LoginFormWidgetState();
  }
}

class LoginFormWidgetState extends State<LoginFormWidget> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return LoginFormPresentation(_formKey);
  }
}

/*

  EmailInput emailValidator = EmailInput.pure();
  PasswordInput passwordInput = PasswordInput.pure();
 */
String? emailValidationFunc(String? value) {
  EmailInput emailValidator = EmailInput.dirty(value!);
  if (emailValidator.valid) {
    return null;
  } else {
    return "Please enter valid email";
  }
}
String? passwordValidationFunc(String? value) {
  PasswordInput passwordInput = PasswordInput.dirty(value!);
  if (passwordInput.valid) {
    return null;
  } else {
    return "Please enter valid password";
  }
}
