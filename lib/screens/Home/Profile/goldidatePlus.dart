import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/app_colors.dart';
import 'package:goldidate/utils/common.dart';

class GoldidatePlus extends StatefulWidget {
  @override
  _GoldidatePlusState createState() => _GoldidatePlusState();
}

class _GoldidatePlusState extends State<GoldidatePlus> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: SingleChildScrollView(
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
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.terms_condititons);
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              "By tapping “Continue”, your payment will be charged to your Apple account, and your subscription will automatically renew for the same package length at the same price untill you cancel in settings in the App store. By tapping “Continue”, you agree to our Privacy Policy and Terms.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey, fontSize: width * 0.035),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.026,
                    left: width * 0.03,
                    right: width * 0.03),
                child: Container(
                  height: height * 0.72,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13.0),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        // Color(0xFF532253),
                        AppColors.goldColor,
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
                              InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(AppRoutes.goldidatePlus2);
                                },
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
                      Image.asset(
                        Common.assetsImages + "3dots.png",
                        width: width * 0.062,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: height * 0.26,
                              width: height * 0.15,
                              child: Padding(
                                padding: EdgeInsets.only(top: height * 0.03),
                                child: Column(
                                  children: [
                                    Text(
                                      "12",
                                      style: TextStyle(
                                        fontSize: width * 0.15,
                                        color: Color(0xFF213B52),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      "months",
                                      style: TextStyle(
                                          fontSize: width * 0.03,
                                          color: Color(0xFF757575)),
                                    ),
                                    Text(
                                      r"$24.99/mo",
                                      style: TextStyle(
                                        fontSize: width * 0.03,
                                        color: Color(0xFFB5ADAD),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          Common.assetsImages + "bigcoin.png",
                                          width: width * 0.055,
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text(
                                          "70,000 Gc",
                                          style: TextStyle(
                                            color: AppColors.goldColor,
                                            fontSize: width * 0.03,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "One time gift coins",
                                      style: TextStyle(
                                        color: AppColors.goldColor,
                                        fontSize: width * 0.02,
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.005,
                                    ),
                                    Text(
                                      r"$299.98",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: height * 0.255,
                              width: width * 0.31,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xFF579DDB),
                                  ),
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: height * 0.03,
                                    width: width * 0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(12.0)),
                                      color: AppColors.goldColor,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Most popular",
                                        style: TextStyle(
                                            fontSize: width * 0.035,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "6",
                                    style: TextStyle(
                                        color: Color(0xFF213B52),
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
                                    r"$29.99/mo",
                                    style: TextStyle(
                                      fontSize: width * 0.03,
                                      color: Color(0xFFB5ADAD),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        Common.assetsImages + "bigcoin.png",
                                        width: width * 0.055,
                                      ),
                                      SizedBox(
                                        width: width * 0.01,
                                      ),
                                      Text(
                                        "30,000 Gc",
                                        style: TextStyle(
                                          color: AppColors.goldColor,
                                          fontSize: width * 0.03,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "One time gift coins",
                                    style: TextStyle(
                                      color: AppColors.goldColor,
                                      fontSize: width * 0.02,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Text(
                                    r"$179.94",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.04),
                              child: Container(
                                height: height * 0.245,
                                width: width * 0.24,
                                child: Padding(
                                  padding: EdgeInsets.only(top: height * 0.01),
                                  child: Column(
                                    children: [
                                      Text(
                                        "1",
                                        style: TextStyle(
                                            color: Color(0xFF213B52),
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
                                        r"$34.99/mo",
                                        style: TextStyle(
                                          fontSize: width * 0.03,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            Common.assetsImages + "bigcoin.png",
                                            width: width * 0.055,
                                          ),
                                          SizedBox(
                                            width: width * 0.01,
                                          ),
                                          Text(
                                            "5,000 Gc",
                                            style: TextStyle(
                                              color: AppColors.goldColor,
                                              fontSize: width * 0.03,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "One time gift coins",
                                        style: TextStyle(
                                          color: AppColors.goldColor,
                                          fontSize: width * 0.02,
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.005,
                                      ),
                                      Text(
                                        r"$34.99",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[500],
                                        ),
                                      ),
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
                            top: height * 0.025,
                            left: width * 0.07,
                            right: width * 0.07),
                        child: Container(
                          height: height * 0.058,
                          width: width * 1.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26.0),
                            color: AppColors.goldColor,
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
      ),
    );
  }
}
