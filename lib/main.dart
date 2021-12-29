import 'package:flutter/material.dart';
import 'package:qr_code/homepage.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
