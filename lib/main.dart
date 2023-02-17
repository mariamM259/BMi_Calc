import 'package:ahn/firstscreen.dart';
import 'package:flutter/material.dart';
// color: Color(0xff1d2136), navy blue
// color: Color(0xffdc4168), pink
// color: Color(0xff212140), buttons

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      home:  App()
    );
  }
}
