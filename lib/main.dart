import 'package:flutter/material.dart';
import 'package:flutter_login_application/src/welcomepage.dart';
import 'package:flutter_login_application/src/login.dart';
import 'package:flutter_login_application/src/register.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Register(),
      '/login': (context) => const Login(),
      '/welcomepage': (context) => const WelcomePage()
    },
  ));
}
