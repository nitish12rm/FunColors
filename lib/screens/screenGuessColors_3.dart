import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:guesscolor/screens/screenResult_4.dart';

int totalScore = 0;
int count = 0;
double elev = 10;
var warning = ' ';
int touch = 0;
List guessColor = [];
int submitCounter = 0;
var totalClicks = 0;
var clk1 = 0;
var clk2 = 0;
var clk3 = 0;
var clk4 = 0;
var clk5 = 0;
var clk6 = 0;
var clk7 = 0;

class screenGuessColors extends StatefulWidget {
  var randomColorList = [];

  screenGuessColors(this.randomColorList);

  @override
  State<screenGuessColors> createState() => _screenGuessColorsState();
}

class _screenGuessColorsState extends State<screenGuessColors> {
  @override
  void initState() {
    super.initState();
    //reversing
    revColorSetFunc();
    guessColor = [];
    submitCounter = 0;
    totalClicks = 0;
    clk1 = 0;
    clk2 = 0;
    clk3 = 0;
    clk4 = 0;
    clk5 = 0;
    clk6 = 0;
    clk7 = 0;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        body: Center(
          child: Stack(
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
              Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                        top: 50,
                        bottom: 100,
                      ),
                      child: Container(
                        height: 80,
                        width: 370,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 7, strokeAlign: 3),
                              borderRadius: BorderRadius.circular(
                                50,
                              )),
                          elevation: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  'Pick The Right Sequence!!',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                  "Make sure to pick all 7 Boxes",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                  // pick the right one box
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        runAlignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        alignment: WrapAlignment.center,
                        children: [
                          Container(
                            height: 110,
                            width: 110,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: elev,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  backgroundColor: Colors.blue),
                              onPressed: () {
                                if (clk1 == 0) {
                                  setState(
                                    () {
                                      guessColor.add(Colors.blue);
                                    },
                                  );
                                }
                                clk1 = 1;
                                totalClicks++;
                              },
                              child: Text(''),
                            ),
                          ),
                          Container(
                            height: 110,
                            width: 110,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: elev,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  backgroundColor: Colors.indigo),
                              onPressed: () {
                                if (clk2 == 0) {
                                  setState(
                                    () {
                                      guessColor.add(Colors.indigo);
                                    },
                                  );
                                }
                                clk2 = 1;
                                totalClicks++;
                              },
                              child: Text(''),
                            ),
                          ),
                          Container(
                            height: 110,
                            width: 110,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: elev,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  backgroundColor: Colors.purple),
                              onPressed: () {
                                if (clk3 == 0) {
                                  setState(
                                    () {
                                      guessColor.add(Colors.purple);
                                    },
                                  );
                                }
                                clk3 = 1;
                                totalClicks++;
                              },
                              child: Text(''),
                            ),
                          ),
                          Container(
                            height: 110,
                            width: 110,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: elev,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  backgroundColor: Colors.green),
                              onPressed: () {
                                if (clk4 == 0) {
                                  setState(
                                    () {
                                      guessColor.add(Colors.green);
                                    },
                                  );
                                }
                                clk4 = 1;
                                totalClicks++;
                              },
                              child: Text(''),
                            ),
                          ),
                          Container(
                            height: 110,
                            width: 110,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: elev,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  backgroundColor: Colors.red),
                              onPressed: () {
                                if (clk5 == 0) {
                                  setState(
                                    () {
                                      guessColor.add(Colors.red);
                                    },
                                  );
                                }
                                clk5 = 1;
                                totalClicks++;
                              },
                              child: Text(''),
                            ),
                          ),
                          Container(
                            height: 110,
                            width: 110,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: elev,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  backgroundColor: Colors.orange),
                              onPressed: () {
                                if (clk6 == 0) {
                                  setState(
                                    () {
                                      guessColor.add(Colors.orange);
                                    },
                                  );
                                }
                                clk6 = 1;
                                totalClicks++;
                              },
                              child: Text(''),
                            ),
                          ),
                          Container(
                            height: 110,
                            width: 110,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: elev,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  backgroundColor: Colors.yellow),
                              onPressed: () {
                                if (clk7 == 0) {
                                  setState(
                                    () {
                                      guessColor.add(Colors.yellow);
                                    },
                                  );
                                }
                                clk7 = 1;
                                totalClicks++;
                              },
                              child: Text(''),
                            ),
                          ),
                        ],
                      ), //ColoredBoxes
                    ],
                  ), // colored boxes
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 100,
                          child: ElevatedButton(
                            onPressed: () {
                              if (totalClicks >= 7) {
                                if (submitCounter == 0)
                                  setState(() {
                                    score();
                                  });
                                submitCounter = 1;
                                var status;
                                DeepCollectionEquality listEquality =
                                    DeepCollectionEquality();
                                bool colorListEquality = listEquality.equals(
                                    guessColor, widget.randomColorList);
                                if (colorListEquality == true)
                                  status = 'Won!!!';
                                else
                                  status = "Lost!";
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: Center(
                                        child: Text(
                                      status,
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    )),
                                    contentPadding: EdgeInsets.all(10),
                                    content: Text(
                                      "Score: ${totalScore}",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    actionsAlignment: MainAxisAlignment.center,
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        screenResult(
                                                            widget.randomColorList,
                                                            guessColor,
                                                            totalScore)));
                                          },
                                          child: Text('Result'),
                                          style: ElevatedButton.styleFrom(
                                              elevation: 8,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))))
                                    ],
                                  ),
                                );
                              }
                            },
                            child: Text('Submit'),
                            style: ElevatedButton.styleFrom(
                                elevation: 7,
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                          ),
                        ), //submit
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          child: ElevatedButton(
                            onPressed: () {
                              guessColor = [];
                              submitCounter = 0;
                              totalClicks = 0;
                              clk1 = 0;
                              clk2 = 0;
                              clk3 = 0;
                              clk4 = 0;
                              clk5 = 0;
                              clk6 = 0;
                              clk7 = 0;
                            },
                            child: Text('Reset'),
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ), //reset

                        //guess
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Container(
                  //   height: 40,
                  //   width: 100,
                  //   child: ElevatedButton(
                  //     onPressed: () {
                  //       showDialog(
                  //         context: context,
                  //         builder: (context) => AlertDialog(
                  //           title: Text('Guess'),
                  //           content: Text(
                  //             widget.randomColorList.length.toString(),
                  //           ),
                  //         ),
                  //       );
                  //     },
                  //     child: Text('Guess'),
                  //     style: ElevatedButton.styleFrom(
                  //       backgroundColor: Colors.blue,
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(10),
                  //       ),
                  //     ),
                  //   ),
                  // ), //Submit Button
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  void revColorSetFunc() {
    for (var i = 0 ; i < widget.randomColorList.length/2 ; i++)
    {
      // store the current index in a temp variable
      var temp = widget.randomColorList[i];
      // add the value from the corresponding index
      // from the end to the current index
      widget.randomColorList[i] = widget.randomColorList[widget.randomColorList.length-1-i];
      // add the temp value to the ending index
      widget.randomColorList[widget.randomColorList.length-1-i] = temp;
    }

  }
  void score() {
    for (int i = 0; i <widget.randomColorList.length; i++) {
      if (widget.randomColorList[i] == guessColor[i]) {
        ++totalScore;
      }
    }
  }
}
