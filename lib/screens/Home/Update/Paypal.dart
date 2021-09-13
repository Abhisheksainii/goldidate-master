import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class Paypal extends StatefulWidget {
  @override
  _PaypalState createState() => _PaypalState();
}

class _PaypalState extends State<Paypal> {
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
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
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
                          Common.assetsImages + "Paypal.png",
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
                            Text(
                              "Coming soon",
                              style: TextStyle(fontSize: 20.0),
                            ),
                            // Container(
                            //   child: Text(
                            //     "Deposit to",
                            //     style: TextStyle(
                            //       color: AppColors.goldColor,
                            //       fontSize: width * 0.04,
                            //       fontWeight: FontWeight.w600,
                            //     ),
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: height * 0.05,
                            // ),
                            // Padding(
                            //   padding: EdgeInsets.only(
                            //       left: width * 0.06, right: width * 0.06),
                            //   child: Container(
                            //     decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.circular(5.0),
                            //       border: Border.all(color: Color(0xFFC3CFE2)),
                            //     ),
                            //     child: TextField(
                            //       decoration: InputDecoration(
                            //         contentPadding: EdgeInsets.all(10.0),
                            //         border: InputBorder.none,
                            //         focusedBorder: InputBorder.none,
                            //         enabledBorder: InputBorder.none,
                            //         errorBorder: InputBorder.none,
                            //         disabledBorder: InputBorder.none,
                            //         hintText: "Email Address",
                            //         hintStyle: TextStyle(
                            //           color: Color(0xFFC3CFE2),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: height * 0.03,
                            // ),
                            // Padding(
                            //   padding: EdgeInsets.only(
                            //       left: width * 0.06, right: width * 0.06),
                            //   child: Container(
                            //     decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.circular(5.0),
                            //       border: Border.all(color: Color(0xFFC3CFE2)),
                            //     ),
                            //     child: TextField(
                            //       decoration: InputDecoration(
                            //         contentPadding: EdgeInsets.all(10.0),
                            //         border: InputBorder.none,
                            //         focusedBorder: InputBorder.none,
                            //         enabledBorder: InputBorder.none,
                            //         errorBorder: InputBorder.none,
                            //         disabledBorder: InputBorder.none,
                            //         hintText: "PayPal ID",
                            //         hintStyle: TextStyle(
                            //           color: Color(0xFFC3CFE2),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: height * 0.1,
                            // ),
                            // Container(
                            //   height: height * 0.06,
                            //   width: width * 0.2,
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(5.0),
                            //     border: Border.all(color: Color(0xFFC3CFE2)),
                            //   ),
                            //   child: Center(
                            //     child: Text(
                            //       r"$20",
                            //       style: TextStyle(
                            //         color: Color(0xFFC3CFE2),
                            //         fontSize: width * 0.045,
                            //         fontWeight: FontWeight.bold,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // InkWell(
                            //   onTap: () {
                            //     Navigator.of(context)
                            //         .pushNamed(AppRoutes.filters);
                            //   },
                            //   child: Padding(
                            //     padding: EdgeInsets.only(
                            //         top: height * 0.1,
                            //         left: width * 0.05,
                            //         right: width * 0.05),
                            //     child: Container(
                            //       height: height * 0.07,
                            //       width: width * 1.0,
                            //       decoration: BoxDecoration(
                            //         color: Color(0xFFD19D43),
                            //         border: Border.all(
                            //           color: Color(0xFFE0E0E0),
                            //         ),
                            //         borderRadius: BorderRadius.circular(60.0),
                            //       ),
                            //       child: Center(
                            //         child: Text(
                            //           "Next Step",
                            //           style: TextStyle(
                            //               color: Colors.white,
                            //               fontSize: 16.0,
                            //               fontWeight: FontWeight.w700),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: height * 0.015,
                            // ),
                            // Padding(
                            //   padding: EdgeInsets.only(
                            //       left: width * 0.05, right: width * 0.05),
                            //   child: Container(
                            //     height: height * 0.07,
                            //     width: width * 1.0,
                            //     decoration: BoxDecoration(
                            //       color: Colors.white,
                            //       border: Border.all(
                            //         color: AppColors.goldColor,
                            //       ),
                            //       borderRadius: BorderRadius.circular(60.0),
                            //     ),
                            //     child: Center(
                            //       child: Text(
                            //         "Back",
                            //         style: TextStyle(
                            //             color: AppColors.goldColor,
                            //             fontSize: 16.0,
                            //             fontWeight: FontWeight.w700),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: height * 0.03,
                            // ),
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
