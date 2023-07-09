// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_build_context_synchronously


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social/components/mytextfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:social/services/authservice.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  void signupuser() async {
    
    showDialog(context: context, builder: (context) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    },);
    try {
      if (passwordController.text == confirmpasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text, password: passwordController.text);
      } else {
        showDialog(context: context,
      builder: (context) {
      return AlertDialog(
        content: Text('Password does not match', textAlign: TextAlign.center,),);
    });
      }

      Navigator.pop(context);
    }
    on FirebaseAuthException catch (e) {

      Navigator.pop(context);

      invalidcredentials(e.code);
    }
   
  }

  void invalidcredentials( String message){
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white,title: Text('Invalid email or password', textAlign: TextAlign.center, style: TextStyle(fontSize: 15),),);
    });
  }

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent),);
      
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Image.asset('assets/logo.png', height: 70),

              SizedBox(height: 50),
              
              Text("Let's", style: TextStyle(fontSize: 35),),
              Text("create an account", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, height: 1.2),),
              SizedBox(height: 30),

              Mytextfield(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
              SizedBox(height: 20),

              Mytextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              SizedBox(height: 20),

              Mytextfield(
                controller: confirmpasswordController,
                hintText: 'Confirm Password',
                obscureText: true,
              ),

              SizedBox(height: 20),

              ElevatedButton(style: ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(360, 60)), backgroundColor: MaterialStatePropertyAll(Color(0xff2F2E41))),
              onPressed: (){ return signupuser(); }, child: Text('Sign Up', style: TextStyle(fontWeight: FontWeight.bold),),),

              SizedBox(height: 30),

              Row(
                children: [
                  Expanded(child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ),),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text('or continue with', style: TextStyle(color: Colors.grey, fontSize: 13)),
                  ),

                  Expanded(child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ),),
                ],
              ),

              SizedBox(height: 20),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
              
                  GestureDetector(onTap: (){Authservice().signInWithGoogle();},
                    child: Image.asset('assets/google.png', height: 60)),
                  SizedBox(width: 40),
                  Image.asset('assets/apple.png', height: 60),
              
                ],
              ),

              SizedBox(height: 20),

              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account ? ', style: TextStyle(color: Colors.grey, fontSize: 13)),
                  GestureDetector(onTap: widget.onTap,
                    child: Text('Sign In', style: TextStyle(color: Colors.blue, fontSize: 13))),
                ],
              ),

              SizedBox(height: 20),
            ],
          ),
        ),),
      ),
    );
  }
}