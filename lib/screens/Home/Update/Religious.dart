import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class Religious extends StatefulWidget {
  @override
  _ReligiousState createState() => _ReligiousState();
}

enum Religions { Atheist, Christian, Jewish, Hindu, Taoists, Islam }

class _ReligiousState extends State<Religious> {
  @override
  Widget build(BuildContext context) {
    Religions _religion = Religions.Atheist;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Religious",
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
                    "SEARCHING FOR CULTURE ORIENTATION",
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
                        "Atheist",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Religions>(
                        activeColor: AppColors.goldColor,
                        value: Religions.Atheist,
                        groupValue: _religion,
                        onChanged: (val) {
                          setState(
                            () {
                              _religion = val;
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
                        "Christian",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Religions>(
                        activeColor: AppColors.goldColor,
                        value: Religions.Christian,
                        groupValue: _religion,
                        onChanged: (val) {
                          setState(
                            () {
                              _religion = val;
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
                        "Jewish",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Religions>(
                        activeColor: AppColors.goldColor,
                        value: Religions.Jewish,
                        groupValue: _religion,
                        onChanged: (val) {
                          setState(
                            () {
                              _religion = val;
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
                        "Hindu",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Religions>(
                        activeColor: AppColors.goldColor,
                        value: Religions.Hindu,
                        groupValue: _religion,
                        onChanged: (val) {
                          setState(
                            () {
                              _religion = val;
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
                        "Taoists",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Religions>(
                        activeColor: AppColors.goldColor,
                        value: Religions.Taoists,
                        groupValue: _religion,
                        onChanged: (val) {
                          setState(
                            () {
                              _religion = val;
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
                        "Islam",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Religions>(
                        activeColor: AppColors.goldColor,
                        value: Religions.Islam,
                        groupValue: _religion,
                        onChanged: (val) {
                          setState(
                            () {
                              _religion = val;
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
