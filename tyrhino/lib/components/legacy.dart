// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tyrhino/pages/legacypage.dart';

class Legacy extends StatefulWidget {
  const Legacy({super.key});

  @override
  State<Legacy> createState() => _LegacyState();
}

class _LegacyState extends State<Legacy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      width: 392.7,
      decoration: BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Image.asset('lib/images/legacybanner.png'),
            Text(
              'Legacy',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            Text(
              'Collection',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll(Colors.white),
                minimumSize: MaterialStatePropertyAll(
                  Size(200, 50),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) {
                      return LegacyPage();
                    },
                  ),
                );
              },
              child: Text(
                'Browse Collection',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 80),
            Image.asset(
              'lib/images/logowhite.png',
              height: 100,
            ),
            Text(
              "T Y R H I N O",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Built with love in India",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
