import 'package:flutter/material.dart';
import 'package:flutterwidget_practice/homePage/homePage.dart';
import 'package:flutterwidget_practice/util/ColorTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ShrineTheme(),
      home: MyHomePage(),
    );
  }
}
