// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';

import 'package:app/login.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 3), () => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context)=>Login())
      ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight, 
              colors: [
                Color(0xFF000000),
                Color(0xFF000000),
              ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [ 
                Image.asset('assets/b2b.png', height: 300.0, width: 300.0),
                Text('B2b Pro and Smarttruck Scanner', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0)),
              ],
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
