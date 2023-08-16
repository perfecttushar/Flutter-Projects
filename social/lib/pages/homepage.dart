// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, void_checks, prefer_interpolation_to_compose_strings

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social/components/mytextfield.dart';
import 'package:social/components/wallposts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  final textcontroller = TextEditingController();

  signoutuser() {
    FirebaseAuth.instance.signOut();
  }

  void postMessage() {
    if (textcontroller.text.isNotEmpty) {
      FirebaseFirestore.instance.collection("UserPosts").add({
        'UserEmail': user.email,
        'Message': textcontroller.text,
        'TimeStamp': Timestamp.now(),
      });
    }

    setState(() {
      textcontroller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            'The Post',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color(0xff2F2E41),
        actions: [
          IconButton(
            onPressed: signoutuser,
            icon: Icon(Icons.logout_rounded),
            splashRadius: 20,
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection("UserPosts")
                      .orderBy(
                        "TimeStamp",
                        descending: false,
                      )
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          final post = snapshot.data!.docs[index];
                          return Wallpost(
                            message: post['Message'],
                            user: post['UserEmail'],
                          );
                        },
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text("Error:${snapshot.error}"),
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Mytextfield(
                          controller: textcontroller,
                          hintText: 'Write something',
                          obscureText: false),
                    ),
                    SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color(0xff2F2E41),
                          borderRadius: BorderRadius.circular(4)),
                      child: IconButton(
                          onPressed: postMessage,
                          icon: Icon(
                            Icons.arrow_circle_up_rounded,
                            color: Colors.white,
                          ),
                          splashRadius: 5,
                          iconSize: 30),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Logged in as: ' + user.email!,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
