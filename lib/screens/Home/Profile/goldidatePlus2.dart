import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/common.dart';

class GoldidatePlus2 extends StatefulWidget {
  @override
  _GoldidatePlus2State createState() => _GoldidatePlus2State();
}

class _GoldidatePlus2State extends State<GoldidatePlus2> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: height * 0.1, left: width * 0.05, right: width * 0.05),
              child: Container(
                child: Column(
                  children: [
                    Text(
                      "Recurring billing, cancel Anytime.",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Container(
                      child: Text(
                        "By tapping “Continue”, your payment will be charged to your Apple account, and your subscription will automatically renew for the same package length at the same price untill you cancel in settings in the App store. By tapping “Continue”, you agree to our Privacy Policy and Terms.",
                        style: TextStyle(
                            color: Colors.grey, fontSize: width * 0.035),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: height * 0.026, left: width * 0.03, right: width * 0.03),
              child: Container(
                height: height * 0.7,
                width: width * 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      // Color(0xFF532253),
                      Colors.orange[900],
                      Colors.amber,
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.01),
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              "Get Goldidate Plus",
                              style: TextStyle(
                                  fontSize: width * 0.05,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Opacity(
                              opacity: 0,
                              child: Image(
                                image: AssetImage(
                                    Common.assetsImages + "bigcoin.png"),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Text(
                              "Connecting new people",
                              style: TextStyle(
                                  fontSize: width * 0.048,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              "Everyone love to get gifts!",
                              style: TextStyle(
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Image(
                      image: AssetImage(Common.assetsImages + "Group 261.png"),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.01),
                            child: Container(
                              height: height * 0.25,
                              width: height * 0.15,
                              child: Padding(
                                padding: EdgeInsets.only(top: height * 0.03),
                                child: Column(
                                  children: [
                                    Text(
                                      "12",
                                      style: TextStyle(
                                          fontSize: width * 0.15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "months",
                                      style: TextStyle(
                                          fontSize: width * 0.03,
                                          color: Color(0xFF757575)),
                                    ),
                                    Text(
                                      r"$42.00/mo",
                                      style: TextStyle(
                                        fontSize: width * 0.03,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.01),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: width * 0.025,
                                            height: height * 0.03,
                                            child: Image(
                                              image: AssetImage(
                                                  Common.assetsImages +
                                                      "smallcoin.png"),
                                            ),
                                          ),
                                          Text(
                                            "+5000 start coins",
                                            style: TextStyle(
                                                fontSize: width * 0.03),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Divider(),
                                    Text(
                                      "SAVE 42%",
                                      style: TextStyle(
                                          color: Colors.orange[600],
                                          fontSize: width * 0.04,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      r"$468.00",
                                      style:
                                          TextStyle(color: Color(0xFF213B52)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.001),
                            child: Container(
                              height: height * 0.27,
                              width: width * 0.31,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xFF579DDB),
                                  ),
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Column(
                                children: [
                                  Container(
                                    height: height * 0.022,
                                    width: width * 0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(12.0)),
                                      color: Colors.orange[900],
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: width * 0.04,
                                          top: height * 0.003),
                                      child: Text(
                                        "Most popular",
                                        style: TextStyle(
                                            fontSize: width * 0.035,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.017,
                                  ),
                                  Text(
                                    "6",
                                    style: TextStyle(
                                        fontSize: width * 0.15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "months",
                                    style: TextStyle(
                                        fontSize: width * 0.03,
                                        color: Color(0xFF757575)),
                                  ),
                                  Text(
                                    r"$49.00/mo",
                                    style: TextStyle(
                                      fontSize: width * 0.03,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.02),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: width * 0.025,
                                          height: height * 0.03,
                                          child: Image(
                                            image: AssetImage(
                                                Common.assetsImages +
                                                    "smallcoin.png"),
                                          ),
                                        ),
                                        Text(
                                          "+2500 start coins",
                                          style:
                                              TextStyle(fontSize: width * 0.03),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "SAVE 27%",
                                    style: TextStyle(
                                        color: Colors.orange[600],
                                        fontSize: width * 0.04,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    r"$294.00",
                                    style: TextStyle(color: Color(0xFF213B52)),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.001),
                            child: Container(
                              height: height * 0.22,
                              width: height * 0.14,
                              child: Padding(
                                padding: EdgeInsets.only(top: height * 0.01),
                                child: Column(
                                  children: [
                                    Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: width * 0.15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "month",
                                      style: TextStyle(
                                          fontSize: width * 0.03,
                                          color: Color(0xFF757575)),
                                    ),
                                    Text(
                                      r"$67.00/mo",
                                      style: TextStyle(
                                        fontSize: width * 0.03,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: width * 0.025,
                                          height: height * 0.03,
                                          child: Image(
                                            image: AssetImage(
                                                Common.assetsImages +
                                                    "smallcoin.png"),
                                          ),
                                        ),
                                        Text(
                                          "+1500 start coins",
                                          style: TextStyle(
                                              fontSize: width * 0.025),
                                        ),
                                      ],
                                    ),
                                    Divider(),
                                    Text(
                                      r"$69.00",
                                      style:
                                          TextStyle(color: Color(0xFF213B52)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.01,
                          left: width * 0.07,
                          right: width * 0.07),
                      child: Container(
                        height: height * 0.058,
                        width: width * 1.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.orange[900],
                              Colors.orange[900],
                              Colors.amber,
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "CONTINUE",
                            style: TextStyle(
                                fontSize: width * 0.048,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.02),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(AppRoutes.Tabview);
                        },
                        child: Container(
                          child: Center(
                              child: Text(
                            "NO THANKS",
                            style: TextStyle(
                                color: Color(0xFFB5B5B5),
                                fontSize: width * 0.046),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
