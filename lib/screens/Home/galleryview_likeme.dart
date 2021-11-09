import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class GalleryViewLikeMe extends StatefulWidget {
  @override
  _GalleryViewLikeMeState createState() => _GalleryViewLikeMeState();
}

class _GalleryViewLikeMeState extends State<GalleryViewLikeMe> {
  List<String> images = [
    "swipeimage.png",
    "swipeimage.png",
    "swipeimage.png",
    "swipeimage.png",
    "swipeimage.png",
    "swipeimage.png",
    "swipeimage.png",
    "swipeimage.png",
    "swipeimage.png",
    "swipeimage.png"
  ];
  List<String> imagesICON = [
    "swipeimage.png",
    "swipeimage.png",
    "swipeimage.png",
    "swipeimage.png",
    "swipeimage.png",
    "swipeimage.png",
    "swipeimage.png",
    "swipeimage.png",
    "swipeimage.png",
    "swipeimage.png"
  ];

  int indexx = -1;
  bool selectedd = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: height * 0.02),
      child: SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.clamp,
                colors: [
                  Color(0xffFFFFFF),
                  Color(0xffD9B372),
                  Color(0xffFFFFFF),
                  Color(0xffD9B372),
                  Color(0xffFFFFFF),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  "Who likes me",
                  style: TextStyle(
                      fontSize: width * 0.09, color: Color(0xff532253)),
                ),
                Text(
                  "Goldidate - Everyone love to get gifts",
                  style: TextStyle(
                      fontSize: width * 0.041, color: Color(0xff532253)),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: images.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: height * 0.01,
                      );
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            index % 2 == 0
                                ? Image(
                                    image: AssetImage(
                                        Common.assetsImages + "Group51448.png"))
                                : Image(
                                    image: AssetImage(Common.assetsImages +
                                        "Group51449.png")),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            SizedBox(
                              // height: height * 0.,
                              child: index % 2 == 0
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        _buildwidget(
                                            height, width, 1, images[index]),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Image(
                                          height: height * 0.19,
                                          image: AssetImage(
                                            Common.assetsImages +
                                                imagesICON[index],
                                          ),
                                        )
                                      ],
                                    )
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image(
                                          height: height * 0.2,
                                          image: AssetImage(
                                            Common.assetsImages +
                                                imagesICON[index],
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        _buildwidget(
                                            height, width, 1, images[index]),
                                      ],
                                    ),
                            ),
                          ],
                        ),
                      );
                    }),
              ],
            )),
      ),
    );
  }

  Widget _buildwidget(double height, double width, int indexxx, String image) {
    bool selectedd = indexx == indexxx;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width * 0.05),
        /************************************/
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
      child: Column(
        children: [
          Container(
            width: width * 0.35,
            // height: height * 0.3,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    Common.assetsImages + image,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(width * 0.05),
                    topLeft: Radius.circular(width * 0.05))),
            height: height * 0.19,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(width * 0.05),
                  bottomRight: Radius.circular(width * 0.05)),
              color: selectedd ? AppColors.goldColor : Colors.white,
            ),
            height: height * 0.072,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Eliza William",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: selectedd ? Colors.white : Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Common.assetsImages + "location.png",
                      height: height * 0.02,
                      width: width * 0.02,
                      color: selectedd ? Colors.white : AppColors.goldColor,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "10 miles",
                      style: TextStyle(
                          color: selectedd ? Colors.white : Colors.black),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
