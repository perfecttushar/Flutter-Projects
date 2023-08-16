// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tyrhino/pages/tyrhinopage.dart';

class Collections extends StatefulWidget {
  const Collections({super.key});

  @override
  State<Collections> createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Tyrhinopage(),
                        ),
                      );
                    },
                    child: Hero(
                      tag: 'tyrhino',
                      child: Image.asset('lib/images/watch1.png'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Tyrhino Classic Black Watch',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'Rs.1699',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                      minimumSize: MaterialStatePropertyAll(
                        Size(310, 50),
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
                        style: TextStyle(fontSize: 10, color: Colors.grey),
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
                          style: TextStyle(fontSize: 10, color: Colors.white),
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
                      Image.asset('lib/images/watch2.png'),
                      Text(
                        'Tyrhino Majestic Blue Watch',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        'Rs.1499',
                        style: TextStyle(fontSize: 10, color: Colors.grey),
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
                          style: TextStyle(fontSize: 10, color: Colors.white),
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
    );
  }
}
