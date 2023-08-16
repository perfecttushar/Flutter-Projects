// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class Wallpost extends StatelessWidget {

  final String message;
  final String user;

  const Wallpost({super.key,
  required this.message,
  required this.user});

  @override
  Widget build(BuildContext context) {
    return Container( decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(4),
    ),
    margin: EdgeInsets.only(bottom: 20),
    padding: EdgeInsets.all(15),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(shape: BoxShape.rectangle, color: Colors.grey.shade200, borderRadius: BorderRadius.circular(4)),
            
            child: Icon(Icons.person),
            padding: EdgeInsets.all(8),
          ),
          SizedBox(width: 10),
          Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user, style: TextStyle(fontSize: 12, color: Colors.grey),),
              SizedBox(height: 5),
              Text(message, style: TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}