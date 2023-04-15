import 'package:flutter/material.dart';
import 'package:guesscolor/screens/screenGuessColors_3.dart';
import 'package:guesscolor/screens/screenName_1.dart';

class screenResult extends StatefulWidget {
  var orgList = [];
  var guessList = [];
  int score;

  screenResult(this.orgList, this.guessList, this.score);

  @override
  State<screenResult> createState() => screenResultState();
}

class screenResultState extends State<screenResult> {
  var match = [];

  @override
  void initState() {
    totalScore=0;
    // TODO: implement initState
    super.initState();
    setState(() {
      matchFunc();
    });

  }

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
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
              left: 35,
              right: 35,
            ),
            child: Container(
              child: ListTile(
                leading: Text(
                  'Original',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  'Guess',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 70,
              left: 20,
              right: 20,
            ),
            child: Container(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        height: 100,
                        width: 100,
                        child: Card(
                          elevation: 100,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 3),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          color: widget.orgList[index],
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left:20 ,right:20 ),
                        child: Container(height:35,width:25,child: Card(shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black,width: 2,)),elevation:8,child: Center(child: Text(match[index])),))
                      ),
                      trailing: Container(
                        height: 100,
                        width: 100,
                        child: Card(
                          elevation: 100,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 3),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          color: widget.guessList[index],
                        ),
                      ),
                    );
                  },
                  itemCount: widget.orgList.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.black,
                      thickness: 2,
                    );
                  }),
            ),
          ),
          Positioned(
            top: 650,
            left: 43,
            child: Container(
              height: 100,
              width: 300,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(side:BorderSide(width: 10,strokeAlign: 4),borderRadius: BorderRadius.circular(50),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                'Score: ${widget.score}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
                      ElevatedButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>screenName()));}, child: Text('Restart'),style:ElevatedButton.styleFrom(elevation: 8, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))))
                    ],
                  )),
            ),
          )
        ],
      )),
    );
  }

  void matchFunc() {
    for (int i = 0; i < widget.orgList.length; i++) {
      if (widget.orgList[i] == widget.guessList[i]) {
        match.add('✅');
      } else
        match.add('❌');
    }
  }
}
