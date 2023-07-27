// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:chatapp/components/mytextfield.dart';
import 'package:chatapp/pages/chatbubble.dart';
import 'package:chatapp/services/chatservice.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Chatpage extends StatefulWidget {
  final String recieveruserEmail;
  final String recieverUserID;
  const Chatpage(
      {super.key,
      required this.recieveruserEmail,
      required this.recieverUserID});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  final TextEditingController _messagecontroller = TextEditingController();
  final Chatservice _chatservice = Chatservice();
  final FirebaseAuth _firebaseauth = FirebaseAuth.instance;

  void sendMessage() async {
    if (_messagecontroller.text.isNotEmpty) {
      await _chatservice.sendMessage(
          widget.recieverUserID, _messagecontroller.text);

      _messagecontroller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Color(0xff2F2E41),
        elevation: 0,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            widget.recieveruserEmail,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: _buildMessageList(),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildMessageList() {
    return StreamBuilder(
      stream: _chatservice.getMessages(
          widget.recieverUserID, _firebaseauth.currentUser!.uid),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error${snapshot.error}');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text('Loading..');
        }

        return ListView(
          children: snapshot.data!.docs
              .map((document) => _buildMessageItem(document))
              .toList(),
        );
      },
    );
  }

  Widget _buildMessageItem(DocumentSnapshot document) {
    Map<String, dynamic> data = document.data() as Map<String, dynamic>;

    var alignment = (data['senderID'] == _firebaseauth.currentUser!.uid)
        ? Alignment.centerRight
        : Alignment.centerLeft;

    return Container(
      alignment: alignment,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment:
              (data['senderId'] == _firebaseauth.currentUser!.uid)
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
          mainAxisAlignment:
              (data['senderId'] == _firebaseauth.currentUser!.uid)
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.end,
          children: [
            SizedBox(height: 10),
            Chatbubble(message: data['message']),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Mytextfield(
                controller: _messagecontroller,
                hintText: 'Your Message',
                obscureText: false),
          ),
          SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: Color(0xff4D59D3),
              borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(
              onPressed: sendMessage,
              icon: const Icon(Icons.arrow_upward_rounded),
              color: Colors.white,
              splashRadius: 20,
            ),
          ),
        ],
      ),
    );
  }
}
