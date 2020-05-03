import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceImage;
  AssetImage diceImageSec;

// working like constructor
  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage = one;
      diceImageSec = one;
    });
  }

  void rollDice() {
    int random = (1 + Random().nextInt(6));
    int randomSec = (1 + Random().nextInt(6));

    AssetImage newImage;
    AssetImage newImageSec;

    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }

    switch (randomSec) {
      case 1:
        newImageSec = one;
        break;
      case 2:
        newImageSec = two;
        break;
      case 3:
        newImageSec = three;
        break;
      case 4:
        newImageSec = four;
        break;
      case 5:
        newImageSec = five;
        break;
      case 6:
        newImageSec = six;
        break;
    }

    setState(() {
      diceImage = newImage;
      diceImageSec = newImageSec;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Dice Roller'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: diceImage,
                width: 100.0,
                height: 100.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: Image(
                  image: diceImageSec,
                  width: 100.0,
                  height: 100.0,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  color: Colors.yellow,
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                  child: Text('Roll the dice!'),
                  onPressed: rollDice,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
