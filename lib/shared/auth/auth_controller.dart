import 'package:flutter/material.dart';
import 'package:payflow/modules/Home/home_page.dart';
import 'package:payflow/modules/login/login_page.dart';

class AuthController {
  dynamic isAuthenticated = false;

  dynamic _user;

  get user => _user;

  void setUser(BuildContext context, var user) {
    if (user != null) {
      _user = user;
      isAuthenticated = true;
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    } else {
      isAuthenticated = false;
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    }
  }
}
