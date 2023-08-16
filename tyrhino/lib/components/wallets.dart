// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Wallets extends StatefulWidget {
  const Wallets({super.key});

  @override
  State<Wallets> createState() => _WalletsState();
}

class _WalletsState extends State<Wallets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 310,
                  width: 165,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset('lib/images/wallet1.png'),
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
                  height: 310,
                  width: 165,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset('lib/images/wallet2.png'),
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
