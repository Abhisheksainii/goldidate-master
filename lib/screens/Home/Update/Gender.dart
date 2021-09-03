import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class MyGender extends StatefulWidget {
  @override
  _MyGenderState createState() => _MyGenderState();
}

enum Gender {
  TransgenderFemale,
  TransgendeMale,
  Transgender,
  Female,
  Male,
  NonBinary
}

class _MyGenderState extends State<MyGender> {
  @override
  Widget build(BuildContext context) {
    Gender _gender = Gender.Female;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "My Gender",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
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
                height: height * 0.07,
                width: double.infinity,
                color: Color(0xFFFFFFFF),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, right: width * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Female",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Gender>(
                        activeColor: AppColors.goldColor,
                        value: Gender.Female,
                        groupValue: _gender,
                        onChanged: (val) {
                          setState(
                            () {
                              _gender = val;
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
                height: height * 0.07,
                width: double.infinity,
                color: Color(0xFFFFFFFF),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, right: width * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Male",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Gender>(
                        activeColor: AppColors.goldColor,
                        value: Gender.Male,
                        groupValue: _gender,
                        onChanged: (val) {
                          setState(
                            () {
                              _gender = val;
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
                height: height * 0.07,
                width: double.infinity,
                color: Color(0xFFFFFFFF),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, right: width * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Non-Binary",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Gender>(
                        activeColor: AppColors.goldColor,
                        value: Gender.NonBinary,
                        groupValue: _gender,
                        onChanged: (val) {
                          setState(
                            () {
                              _gender = val;
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
            ],
          ),
        ),
      ),
    );
  }
}
