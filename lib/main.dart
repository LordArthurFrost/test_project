import 'package:flutter/material.dart';
import 'package:test_prohect/core/auth/login/login_form.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => LoginForm(),
        },
      ),
    );
