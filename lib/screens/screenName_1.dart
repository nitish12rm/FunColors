import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guesscolor/screens/screenRandColors_2.dart';

var nameController = TextEditingController();
bool submit = false;

class screenName extends StatefulWidget {
  const screenName({Key? key}) : super(key: key);

  @override
  State<screenName> createState() => _screenNameState();
}

class _screenNameState extends State<screenName> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController.addListener(() {setState(() {
      submit = nameController.text.isNotEmpty;
    });});
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
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
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Card(
                        color: Colors.white,
                        margin: EdgeInsets.all(20),
                        elevation: 6,
                        shape: RoundedRectangleBorder(side: BorderSide(width:5,strokeAlign: 4),
                            borderRadius: BorderRadius.circular(21)),
                        child: TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                            label: Text('Name'),
                            labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                            floatingLabelStyle:
                            TextStyle(fontSize: 25, color: Color(0XFF222831)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                          onPressed: submit ? (){ Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>screenRandColors(nameController.text.toString(),),),);
                          print("clicked");}  : null,
                          child: Text(
                            'Lets Play',

                          ),
                          style: ElevatedButton.styleFrom(

                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          )),//playButton
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


