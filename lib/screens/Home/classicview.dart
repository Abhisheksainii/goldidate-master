import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/screens/authentication/signup_in_app.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:goldidate/utils/utils_exporter.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:goldidate/screens/Home/matchscreen.dart';
import 'package:flutter/services.dart';

class Classicview extends StatefulWidget {
  @override
  _ClassicviewState createState() => _ClassicviewState();
}

class _ClassicviewState extends State<Classicview>
    with SingleTickerProviderStateMixin {
  List<SwipeItem> _swipeItems = List<SwipeItem>();
  MatchEngine _matchEngine;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List<String> _imageurl = [
    Common.assetsImages + "swipeimage.png",
    Common.assetsImages + "primary_background.png"
  ];
  List<String> lovegifts = [
    Common.assetsImages + "heartballon.png",
    Common.assetsImages + "ross.png",
    Common.assetsImages + "Bunny.png",
    Common.assetsImages + "rozes.png",
    Common.assetsImages + "teddybear.png",
  ];

  List<String> lovegiftsname = [
    "Heart Ballon",
    "Red Rose",
    "Pink Bunny",
    "Rose Bouquet",
    "Teddy bear"
  ];

  List<String> lovegiftsprice = ["60", "75", "80", "100", "125"];

  AnimationController controller;
  Animation animation;
  Animation animation1;
  void initState() {
    super.initState();
    for (int i = 0; i < _imageurl.length; i++) {
      _swipeItems.add(SwipeItem(
        content: Content(imageURl: _imageurl[i]),
      ));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    animation1 = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);

    controller.forward();

    controller.addListener(() {
      setState(() {
        print(animation.value);
      });
    });
  }

  void _onButtonPressed(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            height: height * 0.6,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20),
                  topRight: const Radius.circular(20),
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: height * 0.5,
                    left: width * 0.8,
                    child: RoundButton(
                      width1: width * 0.08,
                      height1: height * 0.06,
                      height: height * 0.12,
                      width: width * 0.12,
                      iconasset: Common.assetsIcons + "downarrow.png",
                      onpressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                width1: width * 0.08,
                                height1: height * 0.06,
                                height: height * 0.12,
                                width: width * 0.16,
                                iconasset:
                                    Common.assetsImages + "dislike icon.png",
                                onpressed: () {
                                  _matchEngine.currentItem.nope();
                                },
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.04),
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
                                iconasset: Common.assetsImages + "Vector-2.png",
                                onpressed: () {
                                  _matchEngine.currentItem.like();
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Eliza Williams",
                                style: TextStyle(
                                    fontSize: height * 0.03,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                ",23",
                                style: TextStyle(
                                  fontSize: height * 0.03,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Art Manager",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: height * 0.019),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                    width * 0.04, 0, width * 0.01, 0),
                                child: Image.asset(
                                  Common.assetsImages + "location.png",
                                  height: height * 0.03,
                                  width: width * 0.03,
                                  color: AppColors.goldColor,
                                ),
                              ),
                              Text(
                                "10 miles",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: height * 0.015),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Feminists.Cats.Other stuff",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: height * 0.01,
                                    left: width * 0.05,
                                    right: width * 0.05,
                                    bottom: height * 0.01),
                                child: Container(
                                  height: height * 0.1,
                                  width: width * 0.85,
                                  decoration: BoxDecoration(
                                    color: Color(0xfff5f5f5),
                                    border: Border.all(
                                      color: Color(0xFFE0E0E0),
                                    ),
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.05),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "I'm a photographer,yoga enthusiast, love to relax but very adventures and lover of superheros movives",
                                            style: TextStyle(
                                                fontSize: width * 0.035,
                                                color: Color(0xFF757575),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Gender:",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: height * 0.018),
                              ),
                              Text(
                                " Female",
                                style: TextStyle(
                                    color: AppColors.goldColor,
                                    fontSize: height * 0.018),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Instagram:",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: height * 0.018),
                              ),
                              Text(
                                " @Eliza-williams",
                                style: TextStyle(
                                    color: AppColors.goldColor,
                                    fontSize: height * 0.018),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: height * 0.015,
                                left: width * 0.08,
                                right: width * 0.08,
                                bottom: height * 0.01),
                            child: Container(
                              width: width * 0.85,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Hobbies",
                                            style: TextStyle(
                                                fontSize: height * 0.02,
                                                color: Colors.grey.shade700),
                                          ),
                                          SizedBox(
                                            height: height * 0.01,
                                          ),
                                          Text(
                                            "Computer Programming, Archery, Drawing, Chess, Poetry",
                                            style: TextStyle(
                                                fontSize: height * 0.017,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (ctx) => AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0))),
                                      title: Center(
                                          child: Text(
                                        "Share",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      )),
                                      content: Container(
                                        child: Stack(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Tap an icon below to share your",
                                                  style: TextStyle(
                                                      color:
                                                          Colors.grey.shade600),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: height * 0.026),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "content directly",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade600),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: height * 0.06),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    Common.assetsIcons +
                                                        "instagram logo.png",
                                                    height: height * 0.08,
                                                    width: width * 0.08,
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.05,
                                                  ),
                                                  Image.asset(
                                                    Common.assetsIcons +
                                                        "facebook logo.png",
                                                    height: height * 0.04,
                                                    width: width * 0.05,
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.05,
                                                  ),
                                                  Image.asset(
                                                    Common.assetsIcons +
                                                        "whatsapp logo.png",
                                                    height: height * 0.08,
                                                    width: width * 0.08,
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.05,
                                                  ),
                                                  Image.asset(
                                                    Common.assetsIcons +
                                                        "snapchat logo.png",
                                                    height: height * 0.08,
                                                    width: width * 0.08,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: AppColors.greyColor,
                                          offset: const Offset(
                                            5.0,
                                            5.0,
                                          ),
                                          blurRadius: 10.0,
                                          spreadRadius: 1.0,
                                        ), //BoxShadow
                                        BoxShadow(
                                          color: Colors.white,
                                          offset: const Offset(0.0, 0.0),
                                          blurRadius: 0.0,
                                          spreadRadius: 0.0,
                                        ), //BoxShadow
                                      ],
                                      borderRadius: BorderRadius.only(
                                          topRight:
                                              Radius.circular(width * 0.05),
                                          topLeft:
                                              Radius.circular(width * 0.05))),
                                  height: height * 0.044,
                                  width: width * 0.3,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Share",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.0009,
                              ),
                              InkWell(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (ctx) => AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0))),
                                      title: Center(
                                          child: Text(
                                        "Report User",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      )),
                                      content: Container(
                                        child: Stack(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Is this person bothering you? Tell us",
                                                  style: TextStyle(
                                                      color:
                                                          Colors.grey.shade600),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: height * 0.026),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "what they did",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade600),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: height * 0.08),
                                              child: Divider(
                                                thickness: 1,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: height * 0.12),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Inappropriate Photos",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade600),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: height * 0.159),
                                              child: Divider(
                                                thickness: 1,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: height * 0.19),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Feels Like Spam",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade600),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: height * 0.229),
                                              child: Divider(
                                                thickness: 1,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: height * 0.26),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "User is underage",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade600),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: height * 0.299),
                                              child: Divider(
                                                thickness: 1,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: height * 0.33,
                                                  bottom: height * 0.02),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Other",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade600),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: AppColors.greyColor,
                                          offset: const Offset(
                                            5.0,
                                            5.0,
                                          ),
                                          blurRadius: 10.0,
                                          spreadRadius: 1.0,
                                        ), //BoxShadow
                                        BoxShadow(
                                          color: Colors.white,
                                          offset: const Offset(0.0, 0.0),
                                          blurRadius: 0.0,
                                          spreadRadius: 0.0,
                                        ), //BoxShadow
                                      ],
                                      borderRadius: BorderRadius.only(
                                          bottomRight:
                                              Radius.circular(width * 0.05),
                                          bottomLeft:
                                              Radius.circular(width * 0.05))),
                                  height: height * 0.044,
                                  width: width * 0.3,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Report",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.05,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
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
                                InkWell(
                                  onTap: () => _onButtonPressed(context),
                                  child: Container(
                                    width: width * 0.07,
                                    height: height * 0.07,
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
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Art Manager",
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
                                  "10 miles",
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
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        elevation: 0,
                        backgroundColor: Colors.transparent.withOpacity(0.7),
                        builder: (context) => SingleChildScrollView(
                          child: Container(
                            height: height * 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.0),
                                topRight: Radius.circular(50.0),
                              ),
                            ),
                            child: Container(
                              child: Column(children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: height * 0.06, left: width * 0.06),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        Common.assetsImages + "smallcoin.png",
                                        height: height * 0.06,
                                        width: width * 0.06,
                                      ),
                                      SizedBox(
                                        width: width * 0.01,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: "4999",
                                          style: TextStyle(
                                              fontSize: height * 0.028,
                                              color: AppColors.whiteColor),
                                          children: [
                                            TextSpan(
                                              text: 'G',
                                              style: TextStyle(
                                                color: AppColors.whiteColor,
                                                fontSize: height * 0.018,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'c ',
                                              style: TextStyle(
                                                color: AppColors.whiteColor,
                                                fontSize: height * 0.012,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: width * 0.00001),
                                  child: Text(
                                    "Love gifts",
                                    style:
                                        TextStyle(color: AppColors.whiteColor),
                                  ),
                                ),
                                Divider(
                                  color: Colors.white,
                                  thickness: 2,
                                ),
                                GridView.builder(
                                  shrinkWrap: true,
                                  itemCount: lovegifts.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 0.8,
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 6,
                                    mainAxisSpacing: 11.0,
                                  ),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => MatchScreen(
                                                imageUrl: lovegifts[index],
                                                giftname: lovegiftsname[index],
                                                giftpricecoin:
                                                    lovegiftsprice[index],
                                              ),
                                            ));
                                      },
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Hero(
                                              tag: 'logo',
                                              child: Container(
                                                child: Image.asset(
                                                    lovegifts[index]),
                                                height: animation.value * 100,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: height * 0.01),
                                              child: Text(
                                                lovegiftsname[index],
                                                style: TextStyle(
                                                    color:
                                                        AppColors.whiteColor),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  Common.assetsImages +
                                                      "smallcoin.png",
                                                  height: height * 0.04,
                                                  width: width * 0.04,
                                                ),
                                                SizedBox(
                                                  width: width * 0.01,
                                                ),
                                                RichText(
                                                  text: TextSpan(
                                                    text: lovegiftsprice[index],
                                                    style: TextStyle(
                                                        fontSize:
                                                            height * 0.015,
                                                        color: AppColors
                                                            .whiteColor),
                                                    children: [
                                                      TextSpan(
                                                        text: ' G',
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .whiteColor,
                                                          fontSize:
                                                              height * 0.011,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: 'c ',
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .whiteColor,
                                                          fontSize:
                                                              height * 0.008,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ]),
                            ),
                          ),
                        ),
                      );
                    },
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
                    iconasset: Common.assetsImages + "Vector-2.png",
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
