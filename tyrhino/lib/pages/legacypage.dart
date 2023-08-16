// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tyrhino/pages/homepage.dart';

class LegacyPage extends StatefulWidget {
  const LegacyPage({super.key});

  @override
  State<LegacyPage> createState() => _LegacyPageState();
}

class _LegacyPageState extends State<LegacyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 511,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/images/legacy.png'),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePage();
                              },
                            ),
                          );
                        },
                        icon:
                            Icon(Icons.arrow_back_rounded, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
              Center(
                child: Text(
                  'Beauty Of Yourself',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 660,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Image.asset('lib/images/legacy1.png'),
                            SizedBox(height: 10),
                            Text(
                              'Tyrhino Legacy Black Watch',
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              'Rs.2299',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.black),
                                minimumSize: MaterialStatePropertyAll(
                                  Size(310, 60),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Add to Cart',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 22),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 325,
                            width: 165,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Image.asset('lib/images/legacy2.png'),
                                Text(
                                  'Tyrhino Legacy Grey Watch',
                                  style: TextStyle(fontSize: 10),
                                ),
                                Text(
                                  'Rs.1899',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.black),
                                    minimumSize: MaterialStatePropertyAll(
                                      Size(130, 30),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Add to Cart',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 22),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 325,
                            width: 165,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Image.asset('lib/images/legacy3.png'),
                                Text(
                                  'Tyrhino Legacy Grey Watch',
                                  style: TextStyle(fontSize: 10),
                                ),
                                Text(
                                  'Rs.1899',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.black),
                                    minimumSize: MaterialStatePropertyAll(
                                      Size(130, 30),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Add to Cart',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 325,
                            width: 165,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Image.asset('lib/images/legacy4.png'),
                                Text(
                                  'Tyrhino Legacy Tan Watch',
                                  style: TextStyle(fontSize: 10),
                                ),
                                Text(
                                  'Rs.1899',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.black),
                                    minimumSize: MaterialStatePropertyAll(
                                      Size(130, 30),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Add to Cart',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 22),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 325,
                            width: 165,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Image.asset('lib/images/legacy5.png'),
                                Text(
                                  'Tyrhino Legacy Brown Watch',
                                  style: TextStyle(fontSize: 10),
                                ),
                                Text(
                                  'Rs.1899',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.black),
                                    minimumSize: MaterialStatePropertyAll(
                                      Size(130, 30),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Add to Cart',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 310,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('lib/images/wfooter.jpg'),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Text(
                      'Made With Finest Components',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  child: Image.asset('lib/images/lg1.png'),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Premium',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              Text(
                                'Curved Glass',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ],
                          ),
                          //
                          //
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  child: Image.asset('lib/images/lg2.png'),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Japanese',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              Text(
                                'Tech Movement',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ],
                          ),
                          //
                          //
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  child: Image.asset('lib/images/lg3.png'),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Authentic Leather',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              Text(
                                '8 Stitches Per Inch.',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
