// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int cIndex = 0;
  final tabs = [
    Text("B2B Login Page"),
    Text("SMARTTRUCK Login Page")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('B2BPRO AND SMARTTRUCK SCANNER'),
      ),
      body: Center(
        child: tabs[cIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: cIndex,
        iconSize: 45,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'B2BPRO'),
          BottomNavigationBarItem(
              icon: Icon(Icons.car_rental), label: 'SMARTTRUCK')
        ],
        onTap: (index) {
          setState(() {
            cIndex = index;
          });
        },
      ),
    );
  }
}
