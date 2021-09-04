import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class Visa extends StatefulWidget {
  @override
  _VisaState createState() => _VisaState();
}

class _VisaState extends State<Visa> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(top: height * 0.05, left: width * 0.02),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Container(
                  child: Text(
                    "Payment Methods",
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: width * 0.1,
                      top: height * 0.04,
                      left: width * 0.06),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.06, top: height * 0.01),
                        child: Image.asset(
                          Common.assetsImages + "Visa.png",
                          width: width * 0.24,
                        ),
                      ),
                      Container(
                        height: height * 0.035,
                        width: width * 0.056,
                        child: Image.asset(
                          Common.assetsImages + "Path 22.png",
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage(Common.assetsImages + "circl.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.04),
                  child: Card(
                    elevation: 12.0,
                    shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                    child: Container(
                      height: height * 0.75,
                      width: width * 0.9,
                      child: Padding(
                        padding: EdgeInsets.only(top: height * 0.04),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                "Scan Card",
                                style: TextStyle(
                                  color: AppColors.goldColor,
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Text(
                              "or",
                              style: TextStyle(
                                color: Color(0xFF191B1D),
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.06, right: width * 0.06),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(color: Color(0xFFC3CFE2)),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10.0),
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "CARD NUMBER",
                                    hintStyle: TextStyle(
                                      color: Color(0xFFC3CFE2),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.06, right: width * 0.06),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(color: Color(0xFFC3CFE2)),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10.0),
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "CARDHOLDER'S NAME",
                                    hintStyle: TextStyle(
                                      color: Color(0xFFC3CFE2),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.065),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: width * 0.18,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border:
                                          Border.all(color: Color(0xFFC3CFE2)),
                                    ),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          child: TextField(
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.all(10.0),
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              hintText: "MM",
                                              hintStyle: TextStyle(
                                                color: Color(0xFFC3CFE2),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_downward,
                                          color: Color(0xFFC3CFE2),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Container(
                                    width: width * 0.25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border:
                                          Border.all(color: Color(0xFFC3CFE2)),
                                    ),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          child: TextField(
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.all(10.0),
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              hintText: "YYYY",
                                              hintStyle: TextStyle(
                                                color: Color(0xFFC3CFE2),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_downward,
                                          color: Color(0xFFC3CFE2),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.07,
                                  ),
                                  Container(
                                    width: width * 0.25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border:
                                          Border.all(color: Color(0xFFC3CFE2)),
                                    ),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          child: TextField(
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.all(10.0),
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              hintText: "CVV",
                                              hintStyle: TextStyle(
                                                color: Color(0xFFC3CFE2),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_downward,
                                          color: Color(0xFFC3CFE2),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.04),
                              child: Row(
                                children: [
                                  Checkbox(
                                      activeColor: Colors.white,
                                      checkColor: Colors.black,
                                      value: value,
                                      onChanged: (val) {
                                        setState(() {
                                          value = val;
                                        });
                                      }),
                                  Text(
                                    "Save credit card information",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: width * 0.03,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(AppRoutes.filters);
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: height * 0.02,
                                    left: width * 0.05,
                                    right: width * 0.05),
                                child: Container(
                                  height: height * 0.07,
                                  width: width * 1.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD19D43),
                                    border: Border.all(
                                      color: Color(0xFFE0E0E0),
                                    ),
                                    borderRadius: BorderRadius.circular(60.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Next Step",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.015,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.05, right: width * 0.05),
                              child: Container(
                                height: height * 0.07,
                                width: width * 1.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: AppColors.goldColor,
                                  ),
                                  borderRadius: BorderRadius.circular(60.0),
                                ),
                                child: Center(
                                  child: Text(
                                    "Back",
                                    style: TextStyle(
                                        color: AppColors.goldColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
