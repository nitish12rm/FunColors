
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:guesscolor/screens/screenName_1.dart';

class screenSplashScreen extends StatefulWidget {
  const screenSplashScreen({Key? key}) : super(key: key);

  @override
  State<screenSplashScreen> createState() => _screenSplashScreenState();
}

class _screenSplashScreenState extends State<screenSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>screenName()));});
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:Scaffold(
      body:Stack(
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
          Positioned(
            top:340,
           left:111,
           height: 170,
            width: 170,
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black,width: 5,),
                  borderRadius: BorderRadius.circular(
                    50,
                  )),
              elevation: 20,
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("FunColors",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("-Nitish")
                    ],
                  )),
            ),
          )
        ],
      ) ,
    )

    );
  }
}
