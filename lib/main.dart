import 'package:flutter/material.dart';

import 'core/auth/login/components/login_form_component.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginForm(),
      },
    );
  }
}
