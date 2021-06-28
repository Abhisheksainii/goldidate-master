import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/common.dart';

class AddPhotos extends StatefulWidget {
  @override
  _AddPhotosState createState() => _AddPhotosState();
}

class _AddPhotosState extends State<AddPhotos> {
  List<String> images = [
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any"
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 0.06, left: width * 0.05),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(AppRoutes.Tabview);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Color(0xFFD12BD1),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.26,
                  ),
                  Text(
                    "Add photos",
                    style: TextStyle(
                        fontSize: width * 0.06, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.02, left: width * 0.28),
              child: Row(
                children: [
                  Text(
                    "Hold, drag and drop to",
                    style: TextStyle(
                        fontSize: width * 0.042, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.02, left: width * 0.16),
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.12),
                child: Row(
                  children: [
                    InkWell(
                      child: Image(
                        image: AssetImage(Common.assetsImages + "img icon.png"),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.13,
                    ),
                    Container(
                      width: width * 0.07,
                      height: height * 0.07,
                      child: InkWell(
                        child: Image(
                          color: Color(0xFF808080),
                          image: AssetImage(
                              Common.assetsImages + "instagram logo.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.13,
                    ),
                    Container(
                      width: width * 0.04,
                      height: height * 0.04,
                      child: InkWell(
                        child: Image(
                          color: Color(0xFF808080),
                          image: AssetImage(
                              Common.assetsImages + "facebook logo.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.045),
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 3,
                children: [
                  Stack(
                    children: [
                      Container(
                          height: height * 0.15,
                          width: width * 0.3,
                          child: Image(
                              image:
                                  AssetImage(Common.assetsImages + "AP1.png"))),
                      Positioned(
                          top: height * 0.11,
                          left: width * 0.22,
                          child: Image(
                              image: AssetImage(
                                  Common.assetsImages + "check button.png")))
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                          height: height * 0.15,
                          width: width * 0.3,
                          child: Image(
                              image:
                                  AssetImage(Common.assetsImages + "AP2.png"))),
                      Positioned(
                          top: height * 0.11,
                          left: width * 0.22,
                          child: Image(
                              image: AssetImage(
                                  Common.assetsImages + "check button.png")))
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                          height: height * 0.15,
                          width: width * 0.3,
                          child: Image(
                              image:
                                  AssetImage(Common.assetsImages + "AP3.png"))),
                      Positioned(
                          top: height * 0.11,
                          left: width * 0.22,
                          child: Image(
                              image: AssetImage(
                                  Common.assetsImages + "check button.png")))
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                          height: height * 0.15,
                          width: width * 0.3,
                          child: Image(
                              image:
                                  AssetImage(Common.assetsImages + "AP4.png"))),
                      Positioned(
                        top: height * 0.11,
                        left: width * 0.22,
                        child: Opacity(
                          opacity: 0,
                          child: Image(
                              image: AssetImage(
                                  Common.assetsImages + "cross icon.png")),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                          height: height * 0.15,
                          width: width * 0.3,
                          child: Image(
                              image:
                                  AssetImage(Common.assetsImages + "AP5.png"))),
                      Positioned(
                          top: height * 0.112,
                          left: width * 0.22,
                          child: Image(
                              image: AssetImage(
                                  Common.assetsImages + "check button.png")))
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                          height: height * 0.15,
                          width: width * 0.3,
                          child: Image(
                              image:
                                  AssetImage(Common.assetsImages + "AP6.png"))),
                      Positioned(
                        top: height * 0.11,
                        left: width * 0.22,
                        child: Opacity(
                          opacity: 0,
                          child: Image(
                            image: AssetImage(
                                Common.assetsImages + "cross icon.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                          height: height * 0.15,
                          width: width * 0.3,
                          child: Image(
                              image:
                                  AssetImage(Common.assetsImages + "AP7.png"))),
                      Positioned(
                        top: height * 0.11,
                        left: width * 0.22,
                        child: Opacity(
                          opacity: 0,
                          child: Image(
                            image: AssetImage(
                                Common.assetsImages + "cross icon.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                          height: height * 0.15,
                          width: width * 0.3,
                          child: Image(
                              image:
                                  AssetImage(Common.assetsImages + "AP8.png"))),
                      Positioned(
                        top: height * 0.11,
                        left: width * 0.22,
                        child: Opacity(
                          opacity: 0,
                          child: Image(
                            image: AssetImage(
                                Common.assetsImages + "cross icon.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                          height: height * 0.15,
                          width: width * 0.3,
                          child: Image(
                              image:
                                  AssetImage(Common.assetsImages + "AP9.png"))),
                      Positioned(
                        top: height * 0.11,
                        left: width * 0.22,
                        child: Opacity(
                          opacity: 0,
                          child: Image(
                            image: AssetImage(
                                Common.assetsImages + "cross icon.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                          height: height * 0.15,
                          width: width * 0.3,
                          child: Image(
                              image: AssetImage(
                                  Common.assetsImages + "AP10.png"))),
                      Positioned(
                        top: height * 0.11,
                        left: width * 0.22,
                        child: Opacity(
                          opacity: 0,
                          child: Image(
                            image: AssetImage(
                                Common.assetsImages + "cross icon.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                          height: height * 0.15,
                          width: width * 0.3,
                          child: Image(
                              image: AssetImage(
                                  Common.assetsImages + "AP11.png"))),
                      Positioned(
                        top: height * 0.11,
                        left: width * 0.22,
                        child: Opacity(
                          opacity: 0,
                          child: Image(
                            image: AssetImage(
                                Common.assetsImages + "cross icon.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                          height: height * 0.15,
                          width: width * 0.3,
                          child: Image(
                              image: AssetImage(
                                  Common.assetsImages + "AP12.png"))),
                      Positioned(
                        top: height * 0.11,
                        left: width * 0.22,
                        child: Opacity(
                          opacity: 0,
                          child: Image(
                            image: AssetImage(
                                Common.assetsImages + "cross icon.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                          height: height * 0.15,
                          width: width * 0.3,
                          child: Image(
                              image: AssetImage(
                                  Common.assetsImages + "AP13.png"))),
                      Positioned(
                        top: height * 0.11,
                        left: width * 0.22,
                        child: Opacity(
                          opacity: 0,
                          child: Image(
                            image: AssetImage(
                                Common.assetsImages + "cross icon.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                          height: height * 0.15,
                          width: width * 0.3,
                          child: Image(
                              image: AssetImage(
                                  Common.assetsImages + "AP14.png"))),
                      Positioned(
                        top: height * 0.11,
                        left: width * 0.22,
                        child: Opacity(
                          opacity: 0,
                          child: Image(
                            image: AssetImage(
                                Common.assetsImages + "cross icon.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                          height: height * 0.15,
                          width: width * 0.3,
                          child: Image(
                              image: AssetImage(
                                  Common.assetsImages + "AP15.png"))),
                      Positioned(
                        top: height * 0.11,
                        left: width * 0.22,
                        child: Opacity(
                          opacity: 0.8,
                          child: Image(
                            image: AssetImage(
                                Common.assetsImages + "cross icon.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: height * 0.09545,
              width: width * 1.8,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black87, blurRadius: 14.0)],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.02),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, AppRoutes.Tabview, (route) => false);
                      },
                      child: Container(
                        width: width * 0.25,
                        height: height * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.0),
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xFF532253),
                                  Color(0xFFD12BD1)
                                ])),
                        child: Center(
                          child: Text(
                            "Done",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
