import 'package:flutter/material.dart';
double Height = 140;
double? rh = 140;
bool? rhh=false;
class sliderr extends StatefulWidget {
  const sliderr({Key? key}) : super(key: key);

  @override
  State<sliderr> createState() => _sliderrState();
}

class _sliderrState extends State<sliderr> {
  // double Height = 140;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Color(0xff212140)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
 Text('Height', style: TextStyle(color: Colors.white)),

                    Text('$Height CM', style: TextStyle(color: Colors.white)),
            Slider(
                value: Height,
                min: 100,
                max: 200,
                activeColor: Color(0xffdc4168),
                onChanged: (hi) {
                  setState(() {
                    Height = hi.toInt() as double;
                    rh = hi.toInt() as double;
                    rhh=true;
                  });
                })
          ],
        ),
      ),
    );
  }
}
