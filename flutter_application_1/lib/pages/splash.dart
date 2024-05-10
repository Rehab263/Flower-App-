// ignore_for_file: annotate_overrides, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Login.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  State<Splash> createState() => _MyAppState();
}

class _MyAppState extends State<Splash> {
  void initState() {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement( context , MaterialPageRoute(builder: (context)=>Login()));
    });
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          //backgroundColor: const Color.fromARGB(225,50, 100, 200),

          body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xff5ac880),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/Z.jpg',
              width: 150,
            ),
            const SizedBox(height: 7),
            const Padding(
              padding: EdgeInsets.only(left: 27.0),
            ),      
          ],
        ),
      )),
    );
  }
}
