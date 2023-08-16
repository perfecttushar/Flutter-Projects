// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously, unused_catch_clause, avoid_print

import 'package:chatapp/components/mytextfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  final forgotpasswordcontroller = TextEditingController();

  @override
  void dispose() {
    forgotpasswordcontroller.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: forgotpasswordcontroller.text.trim(),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Password Reset Link Sent !',
            textAlign: TextAlign.center,
          ),
        ),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Please enter valid email',
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                Center(
                  child: Image.asset('assets/images/forgot.png', height: 150),
                ),
                SizedBox(height: 50),
                Text(
                  'Forgot',
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  'your password ?',
                  style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold, height: 1.5),
                ),
                SizedBox(height: 20),
                Text(
                  'Enter your email address, You will recieve a link to create a new password via email. Make ensure to enter valid email address.',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 30),
                Mytextfield(
                    controller: forgotpasswordcontroller,
                    hintText: 'Enter your email',
                    obscureText: false),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xff2F2E41),
                    ),
                    minimumSize: MaterialStatePropertyAll(
                      Size(
                        360,
                        50,
                      ),
                    ),
                  ),
                  onPressed: () {
                    passwordReset();
                  },
                  child: Text(
                    'Reset Password',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
