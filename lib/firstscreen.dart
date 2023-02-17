import 'package:ahn/Gender.dart';
import 'package:ahn/height.dart';
import 'package:ahn/restbuttons.dart';
import 'package:ahn/secondScreen.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2136),
      body: Column(
        children: [
          Expanded(child: Gender()),
          Expanded(child: sliderr()),
          Expanded(child: rest()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffdc4168)),
                child: TextButton(
                  onPressed: () {
                    int res=weight;
                    Navigator.push(context, MaterialPageRoute(builder: (context) => second()));
                  },
                  child: Text(
                    'Calculate',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ),

        ],
      ),
    );
  }
}
