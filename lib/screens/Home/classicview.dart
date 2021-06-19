import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:goldidate/utils/utils_exporter.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Classicview extends StatefulWidget {
  @override
  _ClassicviewState createState() => _ClassicviewState();
}

class _ClassicviewState extends State<Classicview> {
  List<SwipeItem> _swipeItems = List<SwipeItem>();
  MatchEngine _matchEngine;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List<String> _imageurl = [
    Common.assetsImages + "swipeimage.png",
    Common.assetsImages + "primary_background.png"
  ];

  void initState() {
    for (int i = 0; i < _imageurl.length; i++) {
      _swipeItems.add(SwipeItem(
        content: Content(imageURl: _imageurl[i]),
      ));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        key: _scaffoldKey,
        body: Container(
            padding: EdgeInsets.fromLTRB(0, height * 0.01, 0, 0),
            child: Column(children: [
              Container(
                height: height * 0.75,
                child: SwipeCards(
                  matchEngine: _matchEngine,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width * 0.04),
                        border: Border.all(
                          color: AppColors.goldColor,
                          width: 4,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                        image: DecorationImage(
                            image:
                                AssetImage(_swipeItems[index].content.imageURl),
                            fit: BoxFit.cover),
                      ),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            width * 0.04, height * 0.56, width * 0.04, 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Ethel W. Washington",
                                  style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontSize: height * 0.027),
                                ),
                                Container(
                                  width: width * 0.06,
                                  height: height * 0.06,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          Common.assetsImages + "i2.png"),
                                      fit: BoxFit.scaleDown,
                                    ),
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Art Mananger",
                                  style: TextStyle(
                                      color: AppColors.greyColor,
                                      fontSize: height * 0.019),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      width * 0.04, 0, width * 0.01, 0),
                                  child: Image.asset(
                                    Common.assetsImages + "location.png",
                                    height: height * 0.03,
                                    width: width * 0.03,
                                  ),
                                ),
                                Text(
                                  "10 mile",
                                  style: TextStyle(
                                      color: AppColors.greyColor,
                                      fontSize: height * 0.015),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: AutoSizeText(
                                    "description",
                                    style: TextStyle(
                                        color: AppColors.greyColor,
                                        fontSize: height * 0.019),
                                    maxLines: 2,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RoundButton(
                    width1: width * 0.08,
                    height1: height * 0.06,
                    height: height * 0.12,
                    width: width * 0.12,
                    iconasset: Common.assetsImages + "reload.png",
                    onpressed: () {},
                  ),
                  RoundButton(
                    width1: width * 0.08,
                    height1: height * 0.06,
                    height: height * 0.12,
                    width: width * 0.16,
                    iconasset: Common.assetsImages + "dislike icon.png",
                    onpressed: () {
                      _matchEngine.currentItem.nope();
                    },
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: width * 0.12,
                      height: height * 0.12,
                      child: Image.asset(
                        Common.assetsImages + "gift.png",
                        fit: BoxFit.fitWidth,
                        height: height * 0.05,
                        width: width * 0.05,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.goldColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  RoundButton(
                    width1: width * 0.08,
                    height1: height * 0.06,
                    height: height * 0.12,
                    width: width * 0.16,
                    iconasset: Common.assetsImages + "tick.png",
                    onpressed: () {
                      _matchEngine.currentItem.like();
                    },
                  ),
                  RoundButton(
                    width1: width * 0.08,
                    height1: height * 0.06,
                    height: height * 0.12,
                    width: width * 0.12,
                    iconasset: Common.assetsImages + "smallcoin.png",
                    onpressed: () =>
                        Navigator.of(context).pushNamed(AppRoutes.getcoins),
                  ),
                ],
              )
            ])));
  }
}

class RoundButton extends StatelessWidget {
  const RoundButton(
      {Key key,
      this.height,
      this.width,
      this.iconasset,
      this.onpressed,
      this.width1,
      this.height1})
      : super(key: key);
  final double height;
  final double width;
  final String iconasset;
  final Function onpressed;
  final double height1;
  final double width1;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        child: Image.asset(
          iconasset,
          fit: BoxFit.fitWidth,
          height: height1,
          width: width1,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
      ),
    );
  }
}

class Content {
  final String imageURl;

  Content({this.imageURl});
}
