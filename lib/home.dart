// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';

class Ninja extends StatefulWidget {
  const Ninja({Key? key}) : super(key: key);

  @override
  State<Ninja> createState() => _NinjaState();
}

class _NinjaState extends State<Ninja> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: const Text("PUBG Profile",
            style: TextStyle(
              letterSpacing: 2.0,
            )),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50.0, 50.0, 20.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
                radius: 90,
              ),
            ),
            Divider(
              height: 50,
            ),

            // ignore: prefer_const_constructors
            Text(
              'NAME',
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 16.0,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Ahwaz Abdul Majid',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'CURRENT PUBG LEVEL',
              style: TextStyle(
                fontSize: 16.0,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$counter',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[200],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "ahwaz750@gmail.com",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          backgroundColor: Colors.amber[600],
          child: Icon(
            Icons.add,
          )),
    );
  }
}
