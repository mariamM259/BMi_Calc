import 'package:flutter/material.dart';
int weight = 50;
int age = 10;
int? rw= 50;
bool rww=false;
class rest extends StatefulWidget {
  const rest({Key? key}) : super(key: key);

  @override
  State<rest> createState() => _restState();
}

class _restState extends State<rest> {
  @override
  // int weight = 50;
  // int age = 10;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        //color: Color(0xff212140),

          children: [
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), color: Color(0xff212140)),
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Weight', style: TextStyle(color: Colors.white)),
                  Text('$weight', style: TextStyle(color: Colors.white)),
                  Row(
                    children: [
                      Expanded(child:
                      FloatingActionButton(

                          onPressed: () {
                            setState(() {
                              weight--;
                              rw=weight;
                              rww=true;
                            });
                          },
                        mini: true,
                        backgroundColor: Color(0xff484864),
                          child:Icon(Icons.remove,color: Colors.white,),

                      )
                      ),

                      Expanded(child:
                      FloatingActionButton(
                          onPressed: () {
                        setState(() {
                          weight++;
                          rw=weight;
                        rww=true;
                        });
                      },
                        mini: true,
                        backgroundColor: Color(0xff484864),
                        child:Icon(Icons.add,color: Colors.white,),

                      )
                      )

                    ],
                  )
                ],
              ),
            )),
            SizedBox(width: 15,),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), color: Color(0xff212140)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Age', style: TextStyle(color: Colors.white)),
                      Text('$age', style: TextStyle(color: Colors.white)),
                      Row(
                        children: [
                          Expanded(child:
                          FloatingActionButton(

                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            mini: true,
                            backgroundColor: Color(0xff484864),
                            child:Icon(Icons.remove,color: Colors.white,),

                          )
                          ),

                          Expanded(child:
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                               age++;
                              });
                            },
                            mini: true,
                            backgroundColor: Color(0xff484864),
                            child:Icon(Icons.add,color: Colors.white,),

                          )
                          )

                        ],
                      )
                    ],
                  ),
                ))

          ],
        ),
    );
  }
}
