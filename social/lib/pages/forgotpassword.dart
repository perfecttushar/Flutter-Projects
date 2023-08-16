// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social/components/mytextfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailController = TextEditingController();
  @override
  void dispose(){
    emailController.dispose();
    super.dispose();
  }
  Future passwordReset() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailController.text.trim(),);
      showDialog(context: context,
      builder: (context) {
      return AlertDialog(
        content: Text('Password reset link sent! Check your email', textAlign: TextAlign.center,),);
    });
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(context: context,
      builder: (context) {
      return AlertDialog(
        content: Text('Invalid email', textAlign: TextAlign.center,),);
    });
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Image.asset('assets/forgot.png', height: 210),
              SizedBox(height: 40),
              Text('Forgot password ?', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
              SizedBox(height: 20),
              Text('Enter your email address, You will recieve a link to create a new password via email.'),
              SizedBox(height: 30),
      
              Mytextfield(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
               SizedBox(height: 20),
              ElevatedButton(style: ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(360, 60)), backgroundColor: MaterialStatePropertyAll(Color(0xff2F2E41))),
                onPressed: (){ passwordReset();}, child: Text('Reset Password', style: TextStyle(fontWeight: FontWeight.bold),),),
              
              SizedBox(height: 20),
      
            ],
          ),
        ),),
      ),
    );
  }
}