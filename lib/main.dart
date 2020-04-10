import 'package:ff7_remake_fan/theme.dart';
import 'package:ff7_remake_fan/views/home_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Fantasy 7 Remake - Fan Art',
      theme: FF7Theme().mainTheme,
      home: HomeView(),
    );
  }
}
