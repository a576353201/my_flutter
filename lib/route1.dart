import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  static final channelName = "com.example.androidapp.channel_second";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Hello world ,i am route1,hehe',
              ),
            ),
            Center(
              child: RaisedButton(
                  child: Text(
                    '使用channel与Android通信',
                  ),
                  onPressed: () {
                    jumpToNativePage();
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Future<Null> jumpToNativePage() async {
    MethodChannel methodChannel = MethodChannel(channelName);
    await methodChannel.invokeMethod("open_second_activity");
  }
}
