import 'dart:math';

import 'package:ahn/height.dart';
import 'package:ahn/restbuttons.dart';
import 'package:flutter/material.dart';
double ccc=rh!/100;
double r = rw! / (pow(ccc, 2));
class calc extends StatefulWidget {
  @override
  State<calc> createState() => _calcState();
}

class _calcState extends State<calc> {
//   calc({this.w,this.h}) ;
  var rr=r.round();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
       // height: 300,
         width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Color(0xff212140)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       //   crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (r >= 18.5 && r <= 25)
              Text(
                'Normal',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
            if (r >25 && r <= 30)
              Text(
                'Average',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 20,
                ),
              ),
            if (r >30 && r <= 40)
              Text(
                'Important',
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontSize: 20,
                ),
              ),
            if (r >40 )
              Text(
                'Severe',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              ),
            Text('$rr',style: TextStyle(color: Colors.white,fontSize: 60),),
            if (r >= 18.5 && r <= 25)
              Text(
                'Normal weight',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            if (r >25 && r <= 30)
              Text(
                'Overweight',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            if (r >30 && r <= 40)
              Text(
                'obesity',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            if (r >40 )
              Text(
                'obesity',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
