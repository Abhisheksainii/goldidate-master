import 'package:flutter/material.dart';
import 'package:goldidate/screens/Home/passion.dart';

class Education extends StatefulWidget {
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
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
          "Bio",
          style: TextStyle(
            color: Colors.black,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * 0.05,
                width: double.infinity,
                color: Color(0xFFF5F6FA),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, top: height * 0.014),
                  child: Text(
                    "ADD SCHOOL & UNIVERSITY NAME  ",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: width * 0.03,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Container(
                height: height * 0.33,
                width: width,
                color: Color(0xFFFFFFFF),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.03,
                      left: width * 0.06,
                      right: width * 0.03),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      CHIP(
                          heading: "Ruppin technological college of engineers",
                          widht: width,
                          height: height),
                      CHIP(
                          heading: "Apple seeds academy",
                          widht: width,
                          height: height),
                      CHIP(
                          heading: "Qa Experts College ",
                          widht: width,
                          height: height)
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
