// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class KnowUsPage extends StatefulWidget {
  const KnowUsPage({super.key});

  @override
  State<KnowUsPage> createState() => _KnowUsPageState();
}

class _KnowUsPageState extends State<KnowUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset('lib/images/logotrans.png', height: 200),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'W E  A R E ',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '  T Y R H I N O',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Text(
                    "We are passionate watch makers from Mumbai, India. Our watches represents a union of excellence and innovation. Our goal is to be a prominent watch brand in India and we are hopeful you'll be a part of this beautiful yet exciting journey.",
                    textAlign: TextAlign.justify),
                SizedBox(height: 80),
                Center(
                  child: Text(
                    'Designing For The Minimalist',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(height: 40),
                Image.asset('lib/images/knowus1.png'),
                SizedBox(height: 20),
                Image.asset('lib/images/knowus2.png'),
                SizedBox(height: 40),
                Text(
                    "Tyrhino was designed for the bold and the confident – those who never shy away from taking action. To this idea, we added a sophisticated touch to match with the gentleman’s style. The best of both worlds, our designs can now be used from everyday events to special occasions.",
                    textAlign: TextAlign.justify),
                SizedBox(height: 20),
                Text(
                    "Our secret weapon, the key to this design, was minimalism.",
                    textAlign: TextAlign.justify),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
