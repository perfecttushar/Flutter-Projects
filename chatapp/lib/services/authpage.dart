// ignore_for_file: prefer_const_constructors

import 'package:chatapp/pages/homepage.dart';
import 'package:chatapp/services/logorreg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authpage extends StatelessWidget {
  const Authpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Homepage();
        } else {
          return Logorreg();
        }
      },
    ));
  }
}
