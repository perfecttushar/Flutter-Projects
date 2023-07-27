// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:chatapp/pages/chatpage.dart';
import 'package:chatapp/services/authservice.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  void signout() async {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    await Future.delayed(
      Duration(milliseconds: 1500),
    );
    final authService = Provider.of<Authservice>(context, listen: false);
    authService.singout();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff2F2E41),
        title: Text(
          'C H A T S',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              return signout();
            },
            icon: Icon(Icons.logout_rounded),
          ),
        ],
      ),
      body: _builduserlist(),
    );
  }

  Widget _builduserlist() {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('users').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text('Loading');
        }

        return ListView(
          children: snapshot.data!.docs
              .map<Widget>((doc) => _builduserlistitem(doc))
              .toList(),
        );
      },
    );
  }

  Widget _builduserlistitem(DocumentSnapshot document) {
    Map<String, dynamic> data = document.data()! as Map<String, dynamic>;

    if (_auth.currentUser!.email != data['email']) {
      return Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey.shade300),
          ),
        ),
        child: ListTile(
          leading: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade600),
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            splashRadius: 20,
          ),
          title: Text(
            data['email'],
            style: TextStyle(fontSize: 15),
          ),
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => Chatpage(
                  recieveruserEmail: data['email'],
                  recieverUserID: data['uid'],
                ),
              ),
            );
          },
        ),
      );
    } else {
      return Container();
    }
  }
}
