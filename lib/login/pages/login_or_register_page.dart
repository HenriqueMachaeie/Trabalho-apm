import 'package:flutter/material.dart';
import 'package:meals/login/pages/login_page.dart';
import 'package:meals/login/pages/register_page.dart';

class LoginOrRegisterPage extends StatefulWidget {
  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showLoginPage
          ? LoginPage(
              onTap: togglePages,
            )
          : RegisterPage(
              onTap: togglePages,
            ),
    );
  }
}
