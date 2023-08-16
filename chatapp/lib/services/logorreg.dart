import 'package:chatapp/pages/loginpage.dart';
import 'package:chatapp/pages/signuppage.dart';
import 'package:flutter/material.dart';

class Logorreg extends StatefulWidget {
  const Logorreg({super.key});

  @override
  State<Logorreg> createState() => _LogorregState();
}

class _LogorregState extends State<Logorreg> {
  bool showloginpage = true;
  void togglePages() {
    setState(() {
      showloginpage = !showloginpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showloginpage) {
      return LoginPage(onTap: togglePages);
    } else {
      return Signuppage(onTap: togglePages);
    }
  }
}
