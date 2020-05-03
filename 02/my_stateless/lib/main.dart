import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Flutter App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.green,
      accentColor: Colors.orange,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
        // this is for single screen
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('I am text line one'),
            Text('I am text line two'),
            RaisedButton(
              onPressed: () {},
              child: Text('Signup'),
              color: Colors.orange,
              splashColor: Colors.blue,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add_alert,
          color: Colors.white,
        ),
      ),
    ),
  );
  }
}
