import 'package:ahn/calc.dart';
import 'package:ahn/firstscreen.dart';
import 'package:ahn/main.dart';
import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1d2136),
        appBar: AppBar(
          backgroundColor: Color(0xff1d2136),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 16),
              alignment: Alignment.centerLeft,
                child: Text(
              'your result ',
              style: TextStyle(color: Colors.white, fontSize: 30),
            )),
            Expanded(child: calc()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffdc4168)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                    child: Text(
                      'Recalculate',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ),
          ],
        ));
  }
}
