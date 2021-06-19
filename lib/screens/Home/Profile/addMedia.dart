import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/common.dart';

class AddMedia extends StatefulWidget {
  @override
  _AddMediaState createState() => _AddMediaState();
}

class _AddMediaState extends State<AddMedia> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: height * 0.06, left: width * 0.05),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.myprofile);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0xFFD12BD1),
                ),
              ),
              SizedBox(
                width: width * 0.3,
              ),
              Text(
                "My photos",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: height * 0.03, left: width * 0.25),
          child: Row(
            children: [
              Text(
                "Use Drag’n’Drop to sort the photos!",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.045),
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            children: [
              Stack(
                children: [
                  Container(
                      height: height * 0.15,
                      width: width * 0.3,
                      child: Image(
                          image: AssetImage(Common.assetsImages + "AM1.png"))),
                  Positioned(
                      top: height * 0.11,
                      left: width * 0.22,
                      child: Image(
                          image: AssetImage(
                              Common.assetsImages + "cross icon.png")))
                ],
              ),
              Stack(
                children: [
                  Container(
                      height: height * 0.15,
                      width: width * 0.3,
                      child: Image(
                          image: AssetImage(Common.assetsImages + "AM2.png"))),
                  Positioned(
                      top: height * 0.11,
                      left: width * 0.22,
                      child: Image(
                          image: AssetImage(
                              Common.assetsImages + "cross icon.png")))
                ],
              ),
              Stack(
                children: [
                  Container(
                      height: height * 0.15,
                      width: width * 0.3,
                      child: Image(
                          image: AssetImage(Common.assetsImages + "AM3.png"))),
                  Positioned(
                      top: height * 0.11,
                      left: width * 0.22,
                      child: Image(
                          image: AssetImage(
                              Common.assetsImages + "cross icon.png")))
                ],
              ),
              Stack(
                children: [
                  Container(
                      height: height * 0.15,
                      width: width * 0.3,
                      child: Image(
                          image: AssetImage(Common.assetsImages + "AM4.png"))),
                  Positioned(
                      top: height * 0.11,
                      left: width * 0.22,
                      child: Image(
                          image: AssetImage(
                              Common.assetsImages + "cross icon.png")))
                ],
              ),
              Stack(
                children: [
                  Container(
                      height: height * 0.15,
                      width: width * 0.3,
                      child: Image(
                          image: AssetImage(Common.assetsImages + "AM5.png"))),
                  Positioned(
                      top: height * 0.112,
                      left: width * 0.22,
                      child: Image(
                          image: AssetImage(
                              Common.assetsImages + "cross icon.png")))
                ],
              ),
              Stack(
                children: [
                  Container(
                      height: height * 0.15,
                      width: width * 0.3,
                      child: Image(
                          image: AssetImage(Common.assetsImages + "AM6.png"))),
                  Positioned(
                      top: height * 0.11,
                      left: width * 0.22,
                      child: Image(
                          image: AssetImage(
                              Common.assetsImages + "cross icon.png")))
                ],
              ),
              Stack(
                children: [
                  Container(
                      height: height * 0.15,
                      width: width * 0.3,
                      child: Image(
                          image: AssetImage(Common.assetsImages + "AM7.png"))),
                  Positioned(
                      top: height * 0.11,
                      left: width * 0.22,
                      child: Image(
                          image: AssetImage(
                              Common.assetsImages + "cross icon.png")))
                ],
              ),
              Stack(
                children: [
                  Container(
                      height: height * 0.15,
                      width: width * 0.3,
                      child: Image(
                          image: AssetImage(Common.assetsImages + "AM8.png"))),
                  Positioned(
                      top: height * 0.11,
                      left: width * 0.22,
                      child: Image(
                          image: AssetImage(
                              Common.assetsImages + "cross icon.png")))
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.015),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Color(0xFFEEEEEE)),
                      height: height * 0.12,
                      width: width * 0.28,
                    ),
                  ),
                  Positioned(
                      top: height * 0.11,
                      left: width * 0.22,
                      child: Image(
                          image: AssetImage(
                              Common.assetsImages + "add image icon.png")))
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
