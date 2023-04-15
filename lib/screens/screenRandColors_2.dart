import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guesscolor/screens/screenGuessColors_3.dart';

var colorsSet = [
  Colors.purple,
  Colors.indigo,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.red,
];


class screenRandColors extends StatefulWidget {
  var nameee;

  screenRandColors(this.nameee);

  @override
  State<screenRandColors> createState() => screenRandColorsState();
}

class screenRandColorsState extends State<screenRandColors> {
  @override
  int seconds = 6;
  int gameSeconds = 3;
  int Delay = 2;
  Timer? timer=null;
  Timer? gameTimer=null;
  Timer? screenDelay=null;

  @override
  void initState() {
    //shuffling
    colorsSet.shuffle();
    super.initState();
    gameTimer = Timer.periodic(Duration(seconds: 1), (gameTimer) {
      gameSeconds--;
      setState(() {
        if (gameSeconds == 0) {
          gameTimer.cancel();

          timer = Timer.periodic(Duration(seconds: 1), (timer) {
            // colorsSet.shuffle();
            setState(() {
              if(seconds>0){seconds--;}
              if (seconds == 0) {
                timer.cancel();

                timer = Timer.periodic(Duration(seconds: 1), (screenDelay) {
                  setState(() {
                    Delay--;
                    if (Delay == 0) {
                      screenDelay.cancel();
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  screenGuessColors(colorsSet)));
                    }
                  });
                });
              }


            });
          });
        }
      });
    });
    setState(() {
    });

  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      // backgroundColor: Color(0XFF0A2647),
      body:  Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.deepPurple,
                    height: double.infinity,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.indigo,
                    height: double.infinity,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    height: double.infinity,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    height: double.infinity,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    height: double.infinity,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                    height: double.infinity,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    height: double.infinity,
                  ),
                ),
              ],
            ),
            /*mainRandBox*/ Positioned(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.only(
                  top: 70,
                  left: 10,
                  right: 10,
                ),
              ),
            ),
            /*nameBox*/ Positioned(
              child: Container(
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.only(
                  top: 30,
                  left: 35,
                  right: 35,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top:25.0),
                  child: Card(
                    elevation: 10,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width:6,color: Colors.black,strokeAlign: 3),

                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "${widget.nameee}, Game Will Start in $gameSeconds",
                              style:  TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Center(child: Text(
                            "Remember the Sequence !",
                            style:  TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              child: Center(
                child: Container(
                    height: 230,
                    width: 230,
                    child: Card(
                      shadowColor: colorsSet[seconds],
                      elevation: 100,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),side: BorderSide(color: Colors.black,width: 8,),),
                      color: colorsSet[seconds],
                    )),
              ),
            ),
          ],
        ),
      ),
    );

  }
  // void revColorSetFunc() {
  //   for (var i = 0 ; i < colorsSet.length/2 ; i++)
  //   {
  //     // store the current index in a temp variable
  //     var temp = colorsSet[i];
  //     // add the value from the corresponding index
  //     // from the end to the current index
  //     colorsSet[i] = colorsSet[colorsSet.length-1-i];
  //     // add the temp value to the ending index
  //     colorsSet[colorsSet.length-1-i] = temp;
  //   }
  //
  // }

}
