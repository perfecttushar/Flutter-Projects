// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Banners extends StatefulWidget {
  const Banners({super.key});

  @override
  State<Banners> createState() => _BannersState();
}

class _BannersState extends State<Banners> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/img1.png'),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 285, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Minimal',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'A sleek fusion of elegance and simplicity, redefining timekeeping with its understated design and maximum functionality.',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/img2.png'),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 285, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Premium',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Experience luxury redefined with our premium watches, where timeless elegance meets unrivaled craftsmanship.',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('lib/images/img3.png'),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 285, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Elegant',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Timeless elegance meets precision engineering in our classic watch collection. Elevate your style and punctuate.',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
