import 'package:flutter/material.dart';

class Chatbubble extends StatelessWidget {
  final String message;
  const Chatbubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff4D59D3),
      ),
      child: Text(
        message,
        style: const TextStyle(fontSize: 13, color: Colors.white),
      ),
    );
  }
}
