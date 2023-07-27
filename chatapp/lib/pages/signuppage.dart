// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:chatapp/components/mytextfield.dart';
import 'package:chatapp/services/authservice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Signuppage extends StatefulWidget {
  final void Function()? onTap;
  Signuppage({super.key, required this.onTap});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  void signup() async {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    if (passwordController.text != confirmpasswordController.text) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Password does not match',
            textAlign: TextAlign.center,
          ),
        ),
      );
      return;
    }

    final authservice = Provider.of<Authservice>(context, listen: false);
    try {
      await authservice.signupwithemailandpassword(
          emailController.text, passwordController.text);
      if (context.mounted) Navigator.pop(context);
    } catch (e) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Please enter the details',
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
  }

  void signIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80),
                Center(
                  child: Image.asset('assets/images/signup.png', height: 150),
                ),
                SizedBox(height: 50),
                Text(
                  " Time to,",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  " create your account.",
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
                SizedBox(height: 10),
                //
                //
                Mytextfield(
                  controller: confirmpasswordController,
                  obscureText: true,
                  hintText: 'Confirm password',
                ),
                SizedBox(height: 30),

                //
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                            60,
                            60,
                          ),
                        ),
                      ),
                      onPressed: () {
                        return signup();
                      },
                      child: Icon(Icons.navigate_next_rounded),
                    ),
                  ],
                ),
                //
                SizedBox(height: 60),
                //
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already a user ? '),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Sign in',
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
