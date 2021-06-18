import 'package:flutter/material.dart';

class Classicview extends StatefulWidget {
  @override
  _ClassicviewState createState() => _ClassicviewState();
}

class _ClassicviewState extends State<Classicview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("classic"),
        ),
      ),
    );
  }
}
