// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tyrhino/pages/knowus.dart';
import 'package:tyrhino/pages/legacypage.dart';
import 'package:tyrhino/pages/watchpage.dart';

class DrawerOptions extends StatefulWidget {
  const DrawerOptions({super.key});

  @override
  State<DrawerOptions> createState() => _DrawerOptionsState();
}

class _DrawerOptionsState extends State<DrawerOptions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) {
                  return Watchpage();
                },
              ),
            );
          },
          leading: Image.asset('lib/images/watch.png', height: 30),
          minLeadingWidth: 0,
          title: Text('Watch Collection'),
          style: ListTileStyle.list,
        ),
        Divider(thickness: 1),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) {
                  return LegacyPage();
                },
              ),
            );
          },
          title: Text(' Legacy Collection'),
          style: ListTileStyle.list,
          leading: Image.asset('lib/images/wallet.png', height: 25),
          minLeadingWidth: 0,
        ),
        Divider(thickness: 1),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) {
                  return KnowUsPage();
                },
              ),
            );
          },
          title: Text(' Know Us'),
          style: ListTileStyle.list,
          leading: Image.asset('lib/images/about.png', height: 25),
          minLeadingWidth: 0,
        ),
      ],
    );
  }
}
