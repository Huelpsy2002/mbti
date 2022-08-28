// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mbti/homescreen.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "mbti",
      theme: ThemeData(primaryColor: Colors.white),
      home: homescreen(),
    );
  }
}
