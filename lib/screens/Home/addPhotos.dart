import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/common.dart';

class AddPhotos extends StatefulWidget {
  @override
  _AddPhotosState createState() => _AddPhotosState();
}

class _AddPhotosState extends State<AddPhotos> {
  bool showTick = false;
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
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.07,
                        child: Image(
                          image: AssetImage(
                              Common.assetsImages + "gallary icon.png"),
                        ),
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
                  ImageContainer(height: height, width: width, path: "1"),
                  ImageContainer(height: height, width: width, path: "2"),
                  ImageContainer(height: height, width: width, path: "3"),
                  ImageContainer(height: height, width: width, path: "4"),
                  ImageContainer(height: height, width: width, path: "5"),
                  ImageContainer(height: height, width: width, path: "6"),
                  ImageContainer(height: height, width: width, path: "7"),
                  ImageContainer(height: height, width: width, path: "8"),
                  ImageContainer(height: height, width: width, path: "9"),
                  ImageContainer(height: height, width: width, path: "10"),
                  ImageContainer(height: height, width: width, path: "11"),
                  ImageContainer(height: height, width: width, path: "12"),
                  ImageContainer(height: height, width: width, path: "13"),
                  ImageContainer(height: height, width: width, path: "14"),
                  ImageContainer(height: height, width: width, path: "15"),
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

class ImageContainer extends StatefulWidget {
  const ImageContainer({
    Key key,
    @required this.height,
    @required this.width,
    @required this.path,
  }) : super(key: key);

  final double height;
  final double width;
  final String path;

  @override
  _ImageContainerState createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  bool showTick = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              if (showTick) {
                showTick = false;
              } else {
                showTick = true;
              }
            });
          },
          child: Container(
            height: widget.height * 0.15,
            width: widget.width * 0.3,
            child: Image(
              image: AssetImage(Common.assetsImages + "AP${widget.path}.png"),
            ),
          ),
        ),
        Positioned(
          top: widget.height * 0.11,
          left: widget.width * 0.22,
          child: Visibility(
            visible: showTick,
            child: Container(
              height: widget.height * 0.04,
              width: widget.width * 0.04,
              child: Image(image: AssetImage(Common.assetsImages + "tick.png")),
            ),
          ),
        ),
      ],
    );
  }
}
