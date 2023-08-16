import 'package:flutter/material.dart';
import 'package:social/pages/loginpage.dart';
import 'package:social/pages/registerpage.dart';

class Logorregpage extends StatefulWidget {
  const Logorregpage({super.key});

  @override
  State<Logorregpage> createState() => _LogorregpageState();
}

class _LogorregpageState extends State<Logorregpage> {
  bool showLoginPage = true;
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    }
    else {
      return RegisterPage(
        onTap: togglePages,
      );
    }
  }
}