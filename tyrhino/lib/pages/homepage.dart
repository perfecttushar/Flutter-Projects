// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tyrhino/components/banners.dart';
import 'package:tyrhino/components/collections.dart';
import 'package:tyrhino/components/draweroptions.dart';
import 'package:tyrhino/components/legacy.dart';
import 'package:tyrhino/components/wallets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        automaticallyImplyLeading: true,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark),
        elevation: 0,
        title: Text(
          'T Y R H I N O',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        actions: [
          IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_rounded),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade200,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 50),
              Image.asset(
                'lib/images/logotrans.png',
                height: 100,
              ),
              Text(
                'T Y R H I N O',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 130),
              DrawerOptions(),
              SizedBox(height: 230),
              Text(
                'Build With Love In India',
                style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 392.7,
                  width: 392.7,
                  child: Banners(),
                ),
              ],
            ),
            SizedBox(height: 50),
            Center(
              child: Text(
                'Top Picks',
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 30),
            Collections(),
            SizedBox(height: 50),
            Center(
              child: Text(
                'Best Selling Wallets',
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 50),
            Wallets(),
            SizedBox(height: 30),
            Legacy(),
          ],
        ),
      ),
    );
  }
}
