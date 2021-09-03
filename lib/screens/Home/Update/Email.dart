import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class Email extends StatefulWidget {
  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
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
          "Email",
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
                    padding: EdgeInsets.only(
                        left: width * 0.04, top: height * 0.014),
                    child: Text(
                      "EMAIL ADDRESS",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: width * 0.03,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                EmailDetails(
                  name: "info@goldidate.com",
                ),
                Container(
                  height: height * 0.05,
                  width: double.infinity,
                  color: Color(0xFFF5F6FA),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.04, top: height * 0.014),
                    child: Text(
                      "VERIFY EMAIL ADDRESS",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: width * 0.03,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.02),
                  child: Container(
                    height: height * 0.07,
                    width: width,
                    color: Color(0xFFFFFFFF),
                    child: Center(
                      child: Text(
                        "Update My Email Address",
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
              ],
            )),
      ),
    );
  }
}

class EmailDetails extends StatefulWidget {
  final String name;
  EmailDetails({this.name});

  @override
  _EmailDetailsState createState() => _EmailDetailsState();
}

class _EmailDetailsState extends State<EmailDetails> {
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
                      color: Colors.black,
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
