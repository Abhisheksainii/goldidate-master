import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class Sexuality2 extends StatefulWidget {
  @override
  _Sexuality2State createState() => _Sexuality2State();
}

enum Sexuality { Straight, Gay, Lesbian, Bisexual, Pansexual, Transgender }

class _Sexuality2State extends State<Sexuality2> {
  @override
  Widget build(BuildContext context) {
    Sexuality _sexuality = Sexuality.Bisexual;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Sexuality",
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
                    "SEARCHING FOR SEXUAL ORIENTATION",
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
                        "Straight",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Sexuality>(
                        activeColor: AppColors.goldColor,
                        value: Sexuality.Straight,
                        groupValue: _sexuality,
                        onChanged: (val) {
                          setState(
                            () {
                              _sexuality = val;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 0.5,
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
                        "Gay",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Sexuality>(
                        activeColor: AppColors.goldColor,
                        value: Sexuality.Straight,
                        groupValue: _sexuality,
                        onChanged: (val) {
                          setState(
                            () {
                              _sexuality = val;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 0.5,
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
                        "Lesbian",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Sexuality>(
                        activeColor: AppColors.goldColor,
                        value: Sexuality.Straight,
                        groupValue: _sexuality,
                        onChanged: (val) {
                          setState(
                            () {
                              _sexuality = val;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 0.5,
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
                        "Bisexual",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Sexuality>(
                        activeColor: AppColors.goldColor,
                        value: Sexuality.Bisexual,
                        groupValue: _sexuality,
                        onChanged: (val) {
                          setState(
                            () {
                              _sexuality = val;
                            },
                          );
                        },
                      ),
                    ],
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
                        "Pansexual",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Sexuality>(
                        activeColor: AppColors.goldColor,
                        value: Sexuality.Pansexual,
                        groupValue: _sexuality,
                        onChanged: (val) {
                          setState(
                            () {
                              _sexuality = val;
                            },
                          );
                        },
                      ),
                    ],
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
                        "Transgender",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Sexuality>(
                        activeColor: AppColors.goldColor,
                        value: Sexuality.Transgender,
                        groupValue: _sexuality,
                        onChanged: (val) {
                          setState(
                            () {
                              _sexuality = val;
                            },
                          );
                        },
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
