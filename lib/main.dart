import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruithub/screen/Basket.dart';
import 'package:fruithub/screen/authentication.dart';
import 'package:fruithub/screen/home.dart';
import 'package:fruithub/screen/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'fruithub',
      theme: ThemeData(fontFamily: 'Brandon'),
      home: welcome(),
    );
  }
}
