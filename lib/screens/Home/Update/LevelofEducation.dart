import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class LevelofEducation extends StatefulWidget {
  @override
  _LevelofEducationState createState() => _LevelofEducationState();
}

class _LevelofEducationState extends State<LevelofEducation> {
  List<dynamic> names = [
    "None",
    "Finished High School",
    "Certification or Diploma",
    "Engineer",
    "Bachelor’s Degree",
    "Master’s Degree",
    "Doctorate",
    "MBA"
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Level of Education",
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
          child: ListView(
            children: List.generate(names.length, (index) {
              return EducationLevel(
                name: names[index],
              );
            }),
          ),
        ),
      ),
    );
  }
}

class EducationLevel extends StatefulWidget {
  EducationLevel({this.name});
  final String name;

  @override
  _EducationLevelState createState() => _EducationLevelState();
}

class _EducationLevelState extends State<EducationLevel> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        setState(() {
          isVisible = !isVisible;
        });
      },
      child: Column(
        children: [
          Container(
            height: height * 0.06,
            width: double.infinity,
            color: Color(0xFFFFFFFF),
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: width * 0.03,
                      color: Color(0xFFD19D43),
                    ),
                  ),
                  Visibility(
                    visible: isVisible,
                    child: Image.asset(
                      Common.assetsImages + "check button.png",
                      width: width * 0.04,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: height * 0.0056,
          ),
        ],
      ),
    );
  }
}
