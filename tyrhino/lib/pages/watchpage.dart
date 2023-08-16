// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:tyrhino/pages/homepage.dart';

class Watchpage extends StatefulWidget {
  const Watchpage({super.key});

  @override
  State<Watchpage> createState() => _WatchpageState();
}

class _WatchpageState extends State<Watchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 435,
                width: 435,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/images/classic.png'),
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
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Classic',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            'Collection',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 260, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'T Y R H I N O',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
              Center(
                child: Text(
                  'Timeless Elegance',
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
                            Image.asset('lib/images/watch1.png'),
                            SizedBox(height: 10),
                            Text(
                              'Tyrhino Classic Black Watch',
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              'Rs.1699',
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
                                Image.asset('lib/images/watch3.png'),
                                Text(
                                  'Tyrhino Blizzard Blue Watch',
                                  style: TextStyle(fontSize: 10),
                                ),
                                Text(
                                  'Rs.1699',
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
                                Image.asset('lib/images/watch4.png'),
                                Text(
                                  'Tyrhino Rose Gold Watch',
                                  style: TextStyle(fontSize: 10),
                                ),
                                Text(
                                  'Rs.1499',
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
              SizedBox(height: 20),
              Container(
                height: 395,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/images/leather.png'),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Premium',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            'Collection',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 275, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'T Y R H I N O',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Text(
                  'Leather Finishing',
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
                            Image.asset('lib/images/watch2.png'),
                            SizedBox(height: 10),
                            Text(
                              'Tyrhino Majestic Blue Watch',
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              'Rs.1699',
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
                                Image.asset('lib/images/watch5.png'),
                                Text(
                                  'Tyrhino Umber Tan Watch',
                                  style: TextStyle(fontSize: 10),
                                ),
                                Text(
                                  'Rs.1699',
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
                                Image.asset('lib/images/watch6.png'),
                                Text(
                                  'Tyrhino Panther Black Watch',
                                  style: TextStyle(fontSize: 10),
                                ),
                                Text(
                                  'Rs.1499',
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
                      'Piece Of Quality',
                      style: TextStyle(color: Colors.white, fontSize: 25),
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
                                  child: Image.asset('lib/images/cmp1.png'),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Diamond',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              Text(
                                'Cut Hands',
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
                                  child: Image.asset('lib/images/cmp2.png'),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Color &',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              Text(
                                'Water Resistance',
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
                                  child: Image.asset('lib/images/cmp4.png'),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Certified',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              Text(
                                'Geniune Leather',
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
