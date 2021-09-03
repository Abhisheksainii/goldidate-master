import 'package:flutter/material.dart';
import 'package:goldidate/screens/Home/filters.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class Searching extends StatefulWidget {
  @override
  _SearchingState createState() => _SearchingState();
}

enum Relationships {
  Friendship,
  Romanticrelationship,
  Seriousrelationship,
  Polyamoryrelationship
}

class _SearchingState extends State<Searching> {
  Relationships _relationships = Relationships.Romanticrelationship;
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
          "Searching For",
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
                    "RELATIONSHIP SEARCH",
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
                        "Friendship",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Relationships>(
                        activeColor: AppColors.goldColor,
                        value: Relationships.Friendship,
                        groupValue: _relationships,
                        onChanged: (Relationships val) {
                          setState(
                            () {
                              _relationships = val;
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
                        "Romantic relationship",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Relationships>(
                        activeColor: AppColors.goldColor,
                        value: Relationships.Romanticrelationship,
                        groupValue: _relationships,
                        onChanged: (Relationships val) {
                          setState(
                            () {
                              _relationships = val;
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
                        "Serious relationship",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Relationships>(
                        activeColor: AppColors.goldColor,
                        value: Relationships.Seriousrelationship,
                        groupValue: _relationships,
                        onChanged: (Relationships val) {
                          setState(
                            () {
                              _relationships = val;
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
                        "Polyamory relationship",
                        style: TextStyle(
                          fontSize: width * 0.033,
                          color: Colors.black,
                        ),
                      ),
                      Radio<Relationships>(
                        activeColor: AppColors.goldColor,
                        value: Relationships.Polyamoryrelationship,
                        groupValue: _relationships,
                        onChanged: (Relationships val) {
                          setState(
                            () {
                              _relationships = val;
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
