import 'dart:ui';
import 'package:goldidate/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: width * 0.04, top: height * 0.03),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.settings);
              },
              child: Container(
                height: height * 0.2,
                width: width * 0.4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(Common.assetsImages + "1p.png")),
                ),
              ),
            ),
          ),
          Container(
            height: height * 0.15,
            width: width * 1.0,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Simon Carter,",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "23",
                        style: TextStyle(fontSize: 24),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.008,
                ),
                Text(
                  "Academic Center of Advanced Studies",
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.33),
                  child: Row(
                    children: [
                      Text("Instagram: "),
                      Text(
                        "@Simon-Carter",
                        style: TextStyle(color: Colors.orange),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.4, top: height * 0.003),
                  child: Row(
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: Text(
                          r"coins number: $5000",
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                      Image.asset(
                        Common.assetsImages + "smallcoin.png",
                        width: 10,
                        height: 10,
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: height * 0.005, left: width * 0.1, right: width * 0.1),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(AppRoutes.settings);
                        },
                        child: Container(
                          height: height * 0.08,
                          width: width * 0.08,
                          child: Image(
                            image: AssetImage(
                                Common.assetsImages + "settings icon.png"),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            elevation: 4.0,
                            shape: CircleBorder(),
                            primary: Colors.white,
                            onPrimary: Colors.white),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "SETTINGS",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFC9C8C8),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(AppRoutes.addMedia);
                        },
                        child: Container(
                            height: height * 0.12,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.purple,
                                        shape: BoxShape.circle),
                                    margin: EdgeInsets.only(top: 10),
                                    height: MediaQuery.of(context).size.height *
                                        0.20,
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: Image.asset(
                                      Common.assetsImages + "Camera.png",
                                      height: height * 0.054,
                                    ),
                                  ),
                                  Positioned(
                                    right: width * 0.07,
                                    top: height * 0.07,
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: height * 0.06,
                                      width: width * 0.06,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.greyColor,
                                            offset: const Offset(
                                              4.0,
                                              4.0,
                                            ),
                                            blurRadius: 5.0,
                                            spreadRadius: 0.1,
                                          ), //BoxShadow
                                          BoxShadow(
                                            color: Colors.white,
                                            offset: const Offset(0.0, 0.0),
                                            blurRadius: 0.0,
                                            spreadRadius: 0.0,
                                          ), //BoxShadow
                                        ],
                                      ),
                                      child: Image.asset(
                                        Common.assetsImages + "Path 3072.png",
                                        height: height * 0.04,
                                        width: width * 0.04,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "ADD MEDIA",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFC9C8C8),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.editProfile);
                        },
                        child: Container(
                          height: height * 0.08,
                          width: width * 0.08,
                          child: Image(
                            image: AssetImage(
                                Common.assetsImages + "Pencil icon.png"),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            elevation: 4.0,
                            shape: CircleBorder(),
                            primary: Colors.white,
                            onPrimary: Colors.white),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "EDIT INFO",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFC9C8C8),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: height * 0.08,
              width: width * 1.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.0),
                gradient: LinearGradient(
                  colors: [Color(0xFFD12BD1), Colors.black87],
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "Matching Tip: The best photos are the one\nyou are in...",
                    style:
                        TextStyle(color: Colors.white, fontSize: width * 0.035),
                  ),
                  SizedBox(
                    width: width * 0.07,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      child: Image(
                        height: height * 0.05,
                        width: width * 0.05,
                        image:
                            AssetImage(Common.assetsImages + "Path 3072.png"),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        elevation: 4.0,
                        shape: CircleBorder(),
                        primary: Colors.white,
                        onPrimary: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: height * 0.2395,
            width: width * 4.5,
            decoration: BoxDecoration(
              color: Color(0xFFF5F6FA),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: height * 0.02),
              child: Container(
                child: Column(
                  children: [
                    Text(
                      "Get matches faster",
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Text(
                      "Boost your profile once a month",
                      style: TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Image(
                      image:
                          AssetImage(Common.assetsImages + "text slider.png"),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Container(
                      width: width * 0.8,
                      height: height * 0.06,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22.0),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(AppRoutes.goldidatePlus);
                          },
                          child: Text(
                            "Goldidate Plus",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFFD12BD1)),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
