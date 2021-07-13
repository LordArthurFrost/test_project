import 'package:flutter/material.dart';
import 'package:test_prohect/core/auth/login/screens/login_form_screen.dart';

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
