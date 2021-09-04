import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';
import 'package:goldidate/utils/dialogs/alldialogs.dart';

enum distance { Km, Mi }

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  var selectedRange = RangeValues(0.2, 0.4);
  bool switchValue = true;
  bool switchValue1 = true;
  double value = 0.0;
  distance _dist = distance.Km;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FA),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFFD19D43),
            size: width * 0.08,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                right: width * 0.03,
                top: height * 0.02,
              ),
              child: Text(
                "Done",
                style: TextStyle(
                  fontSize: width * 0.045,
                  color: Color(0xFFD19D43),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: Container(
                height: height * 0.09,
                width: width * 1.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.0),
                  gradient: LinearGradient(colors: [
                    Color(0xFFD9B372),
                    Color(0xFFD19D43),
                  ]),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Image.asset(Common.assetsImages + "logo.png"),
                    SizedBox(
                      width: width * 0.09,
                    ),
                    Text(
                      "Get the best Deal",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.046,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: width * 0.07,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: Container(
                height: height * 0.078,
                width: width * 1.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.0),
                  gradient: LinearGradient(colors: [
                    Color(0xFFD9B372),
                    Color(0xFFD19D43),
                  ]),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Image.asset(
                      Common.assetsImages + "gifts.png",
                      width: width * 0.09,
                    ),
                    SizedBox(
                      width: width * 0.2,
                    ),
                    Text(
                      "Send more Gifts",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: width * 0.07,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: Container(
                height: height * 0.078,
                width: width * 1.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.0),
                  gradient: LinearGradient(colors: [
                    Color(0xFFD9B372),
                    Color(0xFFD19D43),
                  ]),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Image.asset(
                      Common.assetsImages + "bigcoin.png",
                      width: width * 0.09,
                    ),
                    SizedBox(
                      width: width * 0.15,
                    ),
                    Text(
                      "Get more Goldcoins",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.042,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: width * 0.07,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.02),
              child: Container(
                height: height * 0.06,
                width: double.infinity,
                color: Color(0xFFF5F6FA),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                  child: Text(
                    "ACCOUNT SETTINGS",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: width * 0.03,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.phoneNumber);
              },
              child: Details(
                detailValue: "Phone Number",
                haveExtraDetail: true,
                extradetailName: "+1 354 112 2376",
                colorExtra: AppColors.goldColor,
                colorName: Color(0xFF616161),
                colorIcon: AppColors.goldColor,
                isBold: false,
              ),
            ),
            Divider(
              height: height * 0.001,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.email);
              },
              child: Details(
                detailValue: "Email",
                haveExtraDetail: true,
                extradetailName: "Info@goldidate.com",
                colorExtra: AppColors.goldColor,
                colorName: Color(0xFF616161),
                colorIcon: AppColors.goldColor,
                isBold: true,
              ),
            ),
            Container(
              height: height * 0.06,
              width: double.infinity,
              color: Color(0xFFF5F6FA),
              child: Padding(
                padding:
                    EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                child: Center(
                  child: Text(
                    "Verify an Email to help secure your account.",
                    style: TextStyle(
                      color: AppColors.goldColor,
                      fontSize: width * 0.03,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.coins);
              },
              child: Container(
                height: height * 0.058,
                width: double.infinity,
                color: Color(0xFFFFFFFF),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, right: width * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Coin's",
                        style: TextStyle(
                          fontSize: width * 0.03,
                          color: Color(0xFF616161),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.3),
                        child: Row(
                          children: [
                            Image.asset(Common.assetsImages + "bigcoin.png",
                                width: width * 0.05),
                            Container(
                              height: height * 0.05,
                              width: width * 0.2,
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: width * 0.04, top: height * 0.014),
                                child: Text(
                                  "5,000 gc",
                                  style: TextStyle(
                                    color: AppColors.goldColor,
                                    fontSize: width * 0.03,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: width * 0.045,
                        color: AppColors.goldColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.02),
              child: Container(
                height: height * 0.06,
                width: double.infinity,
                color: Color(0xFFF5F6FA),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                  child: Text(
                    "LIVING IN",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: width * 0.03,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.mydirection);
              },
              child: Details(
                detailValue: "Tel Aviv, Israel",
                haveExtraDetail: false,
                extradetailName: "Info@goldidate.com",
                colorExtra: AppColors.goldColor,
                colorName: AppColors.goldColor,
                colorIcon: AppColors.goldColor,
                isBold: false,
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: height * 0.02, bottom: height * 0.01),
              child: Container(
                height: height * 0.06,
                width: double.infinity,
                color: Color(0xFFF5F6FA),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: width * 0.04,
                      top: height * 0.02,
                      right: width * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SEARCH  DISTANCE",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: width * 0.03,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "30 mi.",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: width * 0.03,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: height * 0.058,
              width: double.infinity,
              color: Color(0xFFFFFFFF),
              child: SliderTheme(
                data: SliderThemeData(
                  thumbColor: Color(0xFFD19D43),
                  activeTrackColor: Color(0xFFD19D43),
                  trackHeight: 1,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
                ),
                child: Slider(
                    value: value,
                    onChanged: (value1) {
                      setState(() {
                        value = value1;
                      });
                    }),
              ),
            ),
            Divider(
              height: height * 0.001,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.mydirection);
              },
              child: Details(
                detailValue: "Change Location",
                haveExtraDetail: false,
                extradetailName: "Info@goldidate.com",
                colorExtra: AppColors.goldColor,
                colorName: AppColors.goldColor,
                colorIcon: AppColors.goldColor,
                isBold: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.02),
              child: Container(
                height: height * 0.06,
                width: double.infinity,
                color: Color(0xFFF5F6FA),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                  child: Text(
                    "SHOW ME",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: width * 0.03,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.gender);
              },
              child: Details(
                detailValue: "WOMEN",
                haveExtraDetail: false,
                extradetailName: "Info@goldidate.com",
                colorExtra: AppColors.goldColor,
                colorName: AppColors.goldColor,
                colorIcon: AppColors.goldColor,
                isBold: false,
              ),
            ),
            Container(
              height: height * 0.06,
              width: double.infinity,
              color: Color(0xFFF5F6FA),
              child: Padding(
                padding:
                    EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                child: Text(
                  "AGE RANGE",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: width * 0.03,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              height: height * 0.058,
              width: double.infinity,
              color: Color(0xFFFFFFFF),
              child: SliderTheme(
                data: SliderThemeData(
                  thumbColor: Color(0xFFD19D43),
                  activeTrackColor: Color(0xFFD19D43),
                  trackHeight: 1,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 4),
                ),
                child: RangeSlider(
                    values: selectedRange,
                    onChanged: (value1) {
                      setState(() {
                        selectedRange = value1;
                      });
                    }),
              ),
            ),
            Divider(
              height: height * 0.0005,
            ),
            Container(
              height: height * 0.058,
              width: double.infinity,
              color: Color(0xFFFFFFFF),
              child: Padding(
                padding:
                    EdgeInsets.only(left: width * 0.04, right: width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Go global",
                      style: TextStyle(
                        fontSize: width * 0.03,
                        color: AppColors.goldColor,
                      ),
                    ),
                    CustomSwitch(
                        value: switchValue,
                        onChanged: (value) {
                          setState(() {
                            switchValue = value;
                          });
                        })
                  ],
                ),
              ),
            ),
            Container(
              height: height * 0.06,
              width: double.infinity,
              color: Color(0xFFF5F6FA),
              child: Padding(
                padding:
                    EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                child: Center(
                  child: Container(
                    width: width * 0.65,
                    child: Text(
                      "Go Global will allow you to see people nearby and from all over the world",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.goldColor,
                        fontSize: width * 0.03,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.02),
              child: Container(
                height: height * 0.058,
                width: double.infinity,
                color: Color(0xFFFFFFFF),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: width * 0.04,
                    right: width * 0.03,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Show me on Goldidate",
                        style: TextStyle(
                          fontSize: width * 0.03,
                          color: AppColors.goldColor,
                        ),
                      ),
                      CustomSwitch(
                          value: switchValue1,
                          onChanged: (value) {
                            setState(() {
                              switchValue1 = value;
                            });
                          })
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: height * 0.06,
              width: double.infinity,
              color: Color(0xFFF5F6FA),
              child: Padding(
                padding:
                    EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                child: Center(
                  child: Container(
                    width: width * 0.65,
                    child: Text(
                      "By turning off, you will not be shown in the card stack People you have already liked may still see your profile and match with you. You can still see and chat with your match and send gifts.  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.goldColor,
                        fontSize: width * 0.03,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.02),
              child: InkWell(
                onTap: () {
                  submit_promotion_code(context, height, width);
                },
                child: Container(
                  height: height * 0.07,
                  width: width,
                  color: Color(0xFFFFFFFF),
                  child: Center(
                    child: Text(
                      "Submit Promotion Code",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: width * 0.045,
                        fontWeight: FontWeight.bold,
                        color: AppColors.goldColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: height * 0.055,
              width: double.infinity,
              color: Color(0xFFF5F6FA),
              child: Padding(
                padding:
                    EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                child: Center(
                  child: Container(
                    width: width * 0.65,
                    child: Text(""),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.02),
              child: Container(
                height: height * 0.06,
                width: width,
                color: Color(0xFFFFFFFF),
                child: Center(
                  child: Text(
                    "Share Goldidate",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: width * 0.045,
                      fontWeight: FontWeight.bold,
                      color: AppColors.goldColor,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.02),
              child: Container(
                height: height * 0.06,
                width: double.infinity,
                color: Color(0xFFF5F6FA),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                  child: Text(
                    "CONTACT US",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: width * 0.03,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Details(
              detailValue: "Help & Support",
              haveExtraDetail: false,
              extradetailName: "Info@goldidate.com",
              colorExtra: AppColors.goldColor,
              colorName: Colors.black,
              colorIcon: Colors.black,
              isBold: false,
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.02),
              child: Container(
                height: height * 0.06,
                width: double.infinity,
                color: Color(0xFFF5F6FA),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                  child: Text(
                    "COMMUNITY",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: width * 0.03,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Details(
              detailValue: "Safety Tips",
              haveExtraDetail: false,
              extradetailName: "Info@goldidate.com",
              colorExtra: AppColors.goldColor,
              colorName: Colors.black,
              colorIcon: Colors.black,
              isBold: false,
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.02),
              child: Container(
                height: height * 0.06,
                width: double.infinity,
                color: Color(0xFFF5F6FA),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                  child: Text(
                    "Legal",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: width * 0.03,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Details(
              detailValue: "Privacy",
              haveExtraDetail: false,
              extradetailName: "Info@goldidate.com",
              colorExtra: AppColors.goldColor,
              colorName: Colors.black,
              colorIcon: Colors.black,
              isBold: false,
            ),
            Details(
              detailValue: "Terms of Services",
              haveExtraDetail: false,
              extradetailName: "Info@goldidate.com",
              colorExtra: AppColors.goldColor,
              colorName: Colors.black,
              colorIcon: Colors.black,
              isBold: false,
            ),
            Details(
              detailValue: "Licenses",
              haveExtraDetail: false,
              extradetailName: "Info@goldidate.com",
              colorExtra: AppColors.goldColor,
              colorName: Colors.black,
              colorIcon: Colors.black,
              isBold: false,
            ),
            Container(
              height: height * 0.055,
              width: double.infinity,
              color: Color(0xFFF5F6FA),
              child: Padding(
                padding:
                    EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                child: Center(
                  child: Container(
                    width: width * 0.65,
                    child: Text(""),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.02),
              child: InkWell(
                onTap: () {
                  logout_account(context, height, width);
                },
                child: Container(
                  height: height * 0.06,
                  width: width,
                  color: Color(0xFFFFFFFF),
                  child: Center(
                    child: Text(
                      "Logout",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: width * 0.045,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF939393),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: height * 0.32,
              width: double.infinity,
              color: Color(0xFFF5F6FA),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    Common.assetsImages + "logo.png",
                    width: width * 0.45,
                  ),
                  Container(
                    width: width * 0.65,
                    child: Center(
                      child: Text(
                        "Version V.5",
                        style: TextStyle(
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.02),
              child: InkWell(
                onTap: () {
                  delete_account(context, height, width);
                },
                child: Container(
                  height: height * 0.06,
                  width: width,
                  color: Color(0xFFFFFFFF),
                  child: Center(
                    child: Text(
                      "Delete Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: width * 0.045,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF939393),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: height * 0.03,
              width: double.infinity,
              color: Color(0xFFF5F6FA),
              child: Padding(
                padding:
                    EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                child: Center(
                  child: Container(
                    width: width * 0.65,
                    child: Text(""),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  CustomSwitch({Key key, this.value, this.onChanged}) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  Animation _circleAnimation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
            end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
          },
          child: Container(
            width: 30.5,
            height: 15.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              border: Border.all(
                  color: _circleAnimation.value == Alignment.centerLeft
                      ? Colors.grey[400]
                      : Color(0xFFD19D43)),
              color: _circleAnimation.value == Alignment.centerLeft
                  ? Colors.white
                  : Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 2.0,
                bottom: 2.0,
                left: 2.0,
              ),
              child: Container(
                alignment:
                    widget.value ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  width: 13.5,
                  height: 13.5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _circleAnimation.value == Alignment.centerLeft
                          ? Colors.grey[400]
                          : Color(0xFFD19D43)),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class Details extends StatelessWidget {
  Details(
      {this.detailValue,
      this.haveExtraDetail,
      this.isBold,
      this.colorName,
      this.colorExtra,
      this.colorIcon,
      this.extradetailName});
  bool haveExtraDetail = false;
  bool isBold = false;
  String detailName;
  String detailValue;
  String extradetailName;
  Color colorName;
  Color colorExtra;
  Color colorIcon;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.058,
      width: double.infinity,
      color: Color(0xFFFFFFFF),
      child: Padding(
        padding: EdgeInsets.only(left: width * 0.04, right: width * 0.03),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              detailValue,
              style: TextStyle(
                fontSize: width * 0.03,
                color: colorName,
              ),
            ),
            haveExtraDetail
                ? Padding(
                    padding: EdgeInsets.only(left: width * 0.2),
                    child: Container(
                      height: height * 0.05,
                      width: width * 0.35,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.04, top: height * 0.014),
                        child: Text(
                          extradetailName,
                          style: TextStyle(
                            color: colorExtra,
                            fontSize: width * 0.03,
                            fontWeight:
                                isBold ? FontWeight.bold : FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  )
                : Text(""),
            Icon(
              Icons.arrow_forward_ios,
              size: width * 0.045,
              color: colorIcon,
            )
          ],
        ),
      ),
    );
  }
}
