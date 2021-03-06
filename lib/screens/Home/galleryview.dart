import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class GalleryView extends StatefulWidget {
  @override
  _GalleryViewState createState() => _GalleryViewState();
}

class _GalleryViewState extends State<GalleryView> {
  List<String> images = [
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any",
    "https://placeimg.com/500/500/any"
  ];
  int indexx = -1;
  bool selectedd = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Container(
            child: GridView.builder(
          padding: EdgeInsets.all(width * 0.08),
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.88,
              crossAxisCount: 2,
              crossAxisSpacing: width * 0.06,
              mainAxisSpacing: height * 0.03),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => setState(() => indexx = index),
              child: _buildwidget(height, width, index),
            );
          },
        ),
        ),
      ),
    );
  }

  Widget _buildwidget(double height, double width, int indexxx) {
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
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      Common.assetsImages + "swipeimage.png",
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(width * 0.05),
                    topLeft: Radius.circular(width * 0.05))),
            height: height * 0.15,
          ),
          Expanded(
            child: Container(
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
                        color: selectedd ? Colors.white :  AppColors.goldColor,
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
          ),
        ],
      ),
    );
  }
}
