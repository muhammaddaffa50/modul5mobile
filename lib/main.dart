import 'dart:async';
import 'package:flutter/material.dart';
import 'package:modul5/FirstRoute.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
    );
  }
}

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  time() async{
    var _duration = new Duration(seconds: 5);
    return Timer(_duration, navigator);
  }
  navigator()async{
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>FirstRoute()));
  }

  @override
  void initState(){
    super.initState();
    time();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset('assets/images/kill.gif'),
          ),
        ],
      ),
    );
  }
}
