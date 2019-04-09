import 'package:flutter/material.dart';

///
/// Created by dumingwei on 2019/4/9.
/// Desc:  rout1
///

class Route1App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Route1(),
    );
  }
}

class Route1 extends StatefulWidget {
  String text;

  Route1({Key key, this.text}) : super(key: key);

  @override
  State createState() {
    return Route1State();
  }
}

class Route1State extends State<Route1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Text(
            'Hello world ,i am route1 haha',
          ),
        ),
      ),
    );
  }
}
