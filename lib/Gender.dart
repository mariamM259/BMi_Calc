

import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  State<Gender> createState() => _GenderState();
}
bool Male=false;
bool Female=false;
class _GenderState extends State<Gender> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
            children: [
              Expanded(

                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      Male=!Male;
                      Female=false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(15),
      color: (Male==true)?Color(0xffdc4168):Color(0xff212140),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.male,size: 50,color: Colors.white,),
                        SizedBox(width: 5),
                        Text('male',style: TextStyle( color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15,),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      Female=!Female;
                      Male=false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: (Female==true)?Color(0xffdc4168):Color(0xff212140),

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Icon(Icons.female,size: 50,color: Colors.white),
                        SizedBox(width: 5),
                        Text('female',style: TextStyle( color: Colors.white),),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
    )
    ;
  }
}
