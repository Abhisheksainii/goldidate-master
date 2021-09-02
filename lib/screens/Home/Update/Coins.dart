import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class Coins extends StatefulWidget {
  @override
  _CoinsState createState() => _CoinsState();
}

class _CoinsState extends State<Coins> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Coin's",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
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
        ],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: height * 0.04),
          child: Column(
            children: [
              Container(
                height: height * 0.05,
                width: double.infinity,
                color: Color(0xFFF5F6FA),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.014),
                  child: Text(
                    "SHOW MY GENDER ON SEARCH",
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
                        padding: EdgeInsets.only(left: width * 0.35),
                        child: Container(
                          child: Row(
                            children: [
                              Image.asset(Common.assetsImages + "bigcoin.png",
                                  width: width * 0.05),
                              Container(
                                height: height * 0.05,
                                width: width * 0.35,
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
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0, left: 8.0, right: 8.0),
                child: Container(
                  height: height * 0.09,
                  width: width * 1.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.0),
                    color: AppColors.goldColor,
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Get the best Deal",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: width * 0.046,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Gifts Included in every Deal",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: width * 0.03,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
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
                  height: height * 0.085,
                  width: width * 1.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.0),
                    color: AppColors.goldColor,
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
                  height: height * 0.085,
                  width: width * 1.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.0),
                    color: AppColors.goldColor,
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
              SizedBox(
                height: height * 0.06,
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.02),
                child: Container(
                  height: height * 0.07,
                  width: width,
                  color: Color(0xFFFFFFFF),
                  child: Center(
                    child: Text(
                      "Checkout",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w600,
                        color: AppColors.goldColor,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: height * 0.05,
                width: double.infinity,
                color: Color(0xFFF5F6FA),
                child: Center(
                  child: Text(
                    "Convert Coins to real money",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: width * 0.03,
                      fontWeight: FontWeight.w400,
                    ),
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
