import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstRoute extends StatefulWidget {
  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kill me !!!'),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: ListView(
          children: [
            Image.asset('assets/images/killme.jpg'),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
