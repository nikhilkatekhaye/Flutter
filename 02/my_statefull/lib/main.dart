import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  int counterForDigit = 0;
  List<String> spanishNumbers = [
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "seite",
    "ocho",
    "nueve",
    "dietz"
  ];

  List<int> englishDigit = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  String defaultText = "Spanish numbers";
  String defaultTextForDigit = "English Number";

  void displayNumbers() {
    setState(() {
      defaultText = spanishNumbers[counter];
      defaultTextForDigit = englishDigit[counterForDigit].toString();
      if (counter < 9) {
        counter = counter + 1;
        counterForDigit = counterForDigit + 1;
      } else {
        counter = 0;
        counterForDigit = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Stateful App'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(defaultText, style: TextStyle(fontSize: 30.0)),
                Text(defaultTextForDigit, style: TextStyle(fontSize: 30.0)),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                RaisedButton(
                  child: Text(
                    'Call Spanish Numbers',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: displayNumbers,
                  color: Colors.orange,
                )
              ]),
        ),
      ),
    );
  }
}
