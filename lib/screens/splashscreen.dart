import 'package:flutter/material.dart';
import 'package:goldidate/screens/screens_exporter.dart';
import 'package:goldidate/utils/common.dart';
import 'package:goldidate/routes/app_routes.dart';

import 'dart:async';
class GoldiSplash extends StatefulWidget {


  @override
  _GoldiSplashState createState() => _GoldiSplashState();
}

class _GoldiSplashState extends State<GoldiSplash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Welcome()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      Common.assetsImages + "primary_background.png"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SizedBox(height: height*0.12,),
                  Image.asset(Common.assetsImages+"Chat0.png"),
                Image.asset(Common.assetsImages+"colorlogo.png"),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
