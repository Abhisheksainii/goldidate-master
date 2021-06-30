import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';

class VerifyCode extends StatefulWidget {
  @override
  _VerifyCodeState createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.08, left: width * 0.06),
                child: Container(
                  child: Row(
                    children: [
                      InkWell(
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xFFD12BD1),
                          size: width * 0.08,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.16,
                      ),
                      Text(
                        "My code is",
                        style: TextStyle(
                          fontSize: width * 0.07,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.03, left: width * 0.2),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        width: width * 0.1,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(2.0),
                            hintText: "2",
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.08,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.05),
                      Container(
                        width: width * 0.1,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(2.0),
                            hintText: "5",
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.08,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.05),
                      Container(
                        width: width * 0.1,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(2.0),
                            hintText: "4",
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.08,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.05),
                      Container(
                        width: width * 0.1,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(2.0),
                            hintText: "6",
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.08,
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
                    top: height * 0.04,
                    left: width * 0.06,
                    right: width * 0.04),
                child: Container(
                  child: RichText(
                    text: TextSpan(
                      text: "Please enter the 4-digit code sent\n to you at ",
                      style: TextStyle(
                        fontSize: width * 0.04,
                        color: Color(0xFF757575),
                      ),
                      children: [
                        TextSpan(
                          text: "+1 354 112 2376",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.05),
                child: Container(
                  width: width * 0.26,
                  height: height * 0.048,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: height * 0.01, left: width * 0.06),
                    child: Container(
                      child: Center(
                        child: Text(
                          "Resend",
                          style: TextStyle(
                              color: Color(0xFFD12BD1),
                              fontSize: width * 0.042,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.05,
                    left: width * 0.06,
                    right: width * 0.06),
                child: Container(
                  height: height * 0.38,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                    color: Color(0xFFf5f5f5),
                    borderRadius: BorderRadius.circular(18.0),
                    border: Border.all(
                      color: Color(0xFFE0E0E0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.04, left: width * 0.1),
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: width * 0.08,
                                    color: Color(0xFF9E9E9E),
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.25),
                              InkWell(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                    fontSize: width * 0.08,
                                    color: Color(0xFF9E9E9E),
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.25),
                              InkWell(
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                    fontSize: width * 0.08,
                                    color: Color(0xFF9E9E9E),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.04, left: width * 0.09),
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                    fontSize: width * 0.08,
                                    color: Color(0xFF9E9E9E),
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.25),
                              InkWell(
                                child: Text(
                                  "5",
                                  style: TextStyle(
                                    fontSize: width * 0.08,
                                    color: Color(0xFF9E9E9E),
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.25),
                              InkWell(
                                child: Text(
                                  "6",
                                  style: TextStyle(
                                    fontSize: width * 0.08,
                                    color: Color(0xFF9E9E9E),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.04, left: width * 0.1),
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                    fontSize: width * 0.08,
                                    color: Color(0xFF9E9E9E),
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.25),
                              InkWell(
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                    fontSize: width * 0.08,
                                    color: Color(0xFF9E9E9E),
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.25),
                              InkWell(
                                child: Text(
                                  "9",
                                  style: TextStyle(
                                    fontSize: width * 0.08,
                                    color: Color(0xFF9E9E9E),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.04, left: width * 0.1),
                        child: Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Text(
                                  "*",
                                  style: TextStyle(
                                    fontSize: width * 0.08,
                                    color: Color(0xFF9E9E9E),
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.25),
                              InkWell(
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                    fontSize: width * 0.08,
                                    color: Color(0xFF9E9E9E),
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.25),
                              InkWell(
                                child: Text(
                                  "#",
                                  style: TextStyle(
                                    fontSize: width * 0.08,
                                    color: Color(0xFF9E9E9E),
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
                padding: EdgeInsets.only(
                    top: height * 0.05,
                    left: width * 0.05,
                    right: width * 0.05),
                child: InkWell(
                  onTap: () =>
                      Navigator.of(context).pushNamed(AppRoutes.personal),
                  child: Container(
                    height: height * 0.07,
                    width: width * 1.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black, Color(0xFFD12BD1)]),
                      border: Border.all(
                        color: Color(0xFFE0E0E0),
                      ),
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    child: Center(
                      child: Text(
                        "Submit",
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
                height: height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
