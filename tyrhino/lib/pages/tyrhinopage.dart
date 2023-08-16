// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Tyrhinopage extends StatefulWidget {
  const Tyrhinopage({super.key});

  @override
  State<Tyrhinopage> createState() => _TyrhinopageState();
}

class _TyrhinopageState extends State<Tyrhinopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        title: Text(
          ' T Y R H I N O',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 510,
                        width: 392.7,
                        child: PageView(
                          children: [
                            Hero(
                              tag: 'tyrhino',
                              child: Image.asset(
                                'lib/images/watch1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Hero(
                              tag: 'tyrhino',
                              child: Image.asset(
                                'lib/images/tyrhino2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Hero(
                              tag: 'tyrhino',
                              child: Image.asset(
                                'lib/images/tyrhino3.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Hero(
                              tag: 'tyrhino',
                              child: Image.asset(
                                'lib/images/tyrhino4.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Tyrhino Classic Black Watch',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '₹1,699',
                      style: TextStyle(fontSize: 26, color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Tyrhino Classic Series – The ultimate statement piece for those who demand nothing but the best',
                      style: TextStyle(),
                    ),
                    SizedBox(height: 20),
                    //
                    //
                    Text(
                      '• Designed For Lasting Elegance',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '• Precision Japanese Movement',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '• Unmatched Attention To Detail',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        minimumSize: MaterialStatePropertyAll(
                          Size(360, 50),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 50),
                    Center(
                      child: Text(
                        'Designed For India',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 50),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Image.asset('lib/images/tyrhino5.png'),
                      ),
                    ),
                    SizedBox(height: 20),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Image.asset('lib/images/tyrhino6.png'),
                      ),
                    ),
                    SizedBox(height: 20),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        child: Image.asset('lib/images/tyrhino7.png'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Image.asset('lib/images/tfooter.png'),
            ],
          ),
        ),
      ),
    );
  }
}
