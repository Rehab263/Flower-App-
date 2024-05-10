// ignore_for_file: prefer_const_constructors, unused_import,  unused_label
import 'package:flutter_application_1/pages/details_screen.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/Login.dart';
import 'package:flutter_application_1/pages/register.dart';
import 'package:flutter_application_1/pages/splash.dart';
import 'package:flutter_application_1/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {   
      return MaterialApp(
          title: "myApp",
          debugShowCheckedModeBanner: false,
          home: Splash(),
    );
  }
}
