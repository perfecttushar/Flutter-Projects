// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:chatapp/components/mytextfield.dart';
import 'package:chatapp/pages/forgotpassword.dart';
import 'package:chatapp/services/authservice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signin() async {
    final authService = Provider.of<Authservice>(context, listen: false);

    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    try {
      await authService.signinwithemailandpassword(
          emailController.text, passwordController.text);
      if (context.mounted) Navigator.pop(context);
    } catch (e) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Invalid email or password',
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
                SizedBox(height: 80),
                Center(
                  child: Image.asset('assets/images/login.png', height: 150),
                ),
                SizedBox(height: 50),
                Text(
                  " Hi there,",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  " glad to see you again.",
                  style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold, height: 1.5),
                ),
                SizedBox(height: 30),
                //
                //
                Mytextfield(
                  controller: emailController,
                  obscureText: false,
                  hintText: 'Email',
                ),
                SizedBox(height: 10),
                //
                //
                Mytextfield(
                  controller: passwordController,
                  obscureText: true,
                  hintText: 'Password',
                ),
                SizedBox(height: 30),
                //
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return Forgotpassword();
                            },
                          ),
                        );
                      },
                      child: Text(
                        '  Forgot password ?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xff6C63FF),
                        ),
                        minimumSize: MaterialStatePropertyAll(
                          Size(
                            60,
                            60,
                          ),
                        ),
                      ),
                      onPressed: () {
                        return signin();
                      },
                      child: Icon(Icons.navigate_next_rounded),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                //
                //

                //
                SizedBox(height: 100),
                //
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a user ? "),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Sign up',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
