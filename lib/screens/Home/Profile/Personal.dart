import 'package:flutter/material.dart';

class Personal extends StatefulWidget {
  @override
  _PersonalState createState() => _PersonalState();
}

enum ViewStyle { classicView, galleryView }
enum Interests { friendShip, business, dating }
enum Gender {
  TransgenderFemale,
  TransgendeMale,
  Transgender,
  Female,
  Male,
  NonBinary
}
enum Sexuality { Straight, Gay, Lesbian, Bisexual, Pansexual, Transgender }

class _PersonalState extends State<Personal> {
  var selectedRange = RangeValues(0.2, 0.4);
  double value = 0.0;
  Gender _gender = Gender.Female;
  Sexuality _sex = Sexuality.Straight;
  ViewStyle _character = ViewStyle.classicView;
  Interests _interest = Interests.dating;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.05, left: width * 0.06),
                child: Container(
                  child: Row(
                    children: [
                      InkWell(
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xFFD12BD1),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.27,
                      ),
                      Text(
                        "Personal",
                        style: TextStyle(
                            fontSize: width * 0.06,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.03,
                    left: width * 0.05,
                    right: width * 0.05),
                child: Container(
                  height: height * 0.17,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(18.0),
                      border: Border.all(color: Color(0xFFE0E0E0))),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.015, left: width * 0.06),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.2),
                          child: Container(
                            child: Text(
                              "My first name is",
                              style: TextStyle(
                                  fontSize: width * 0.05,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: height * 0.02, left: width * 0.27),
                          child: Container(
                            child: Text(
                              "Simon Carter",
                              style: TextStyle(
                                  color: Color(0xFFD12BD1),
                                  fontSize: width * 0.037),
                            ),
                          ),
                        ),
                        Divider(
                          endIndent: 21,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width * 0.15, top: height * 0.01),
                          child: Container(
                            child: Text(
                              "This is how it will appear in Dater.",
                              style: TextStyle(
                                  color: Color(0xFF9E9E9E),
                                  fontSize: width * 0.033),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.03,
                    left: width * 0.05,
                    right: width * 0.05),
                child: Container(
                  height: height * 0.17,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(18.0),
                      border: Border.all(color: Color(0xFFE0E0E0))),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.015, left: width * 0.06),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.23),
                          child: Container(
                            child: Text(
                              "My birthday is",
                              style: TextStyle(
                                  fontSize: width * 0.05,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: height * 0.02, left: width * 0.27),
                          child: Container(
                            child: Text(
                              "DD-MM-YY",
                              style: TextStyle(
                                  color: Color(0xFF757575),
                                  fontSize: width * 0.04),
                            ),
                          ),
                        ),
                        Divider(
                          endIndent: 21,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width * 0.21, top: height * 0.01),
                          child: Container(
                            child: Text(
                              "Your age will be public",
                              style: TextStyle(
                                  color: Color(0xFF9E9E9E),
                                  fontSize: width * 0.033),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.03,
                    left: width * 0.05,
                    right: width * 0.05),
                child: Container(
                  height: height * 0.47,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(18.0),
                      border: Border.all(color: Color(0xFFE0E0E0))),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.015, left: width * 0.06),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.3),
                              child: Container(
                                child: Text(
                                  "Gender",
                                  style: TextStyle(
                                      fontSize: width * 0.05,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF424242)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Female",
                                  style: TextStyle(
                                    fontSize: width * 0.045,
                                    color: Color(0xFF757575),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.53,
                                ),
                                Radio<Gender>(
                                  activeColor: Color(0xFFD12BD1),
                                  value: Gender.Female,
                                  groupValue: _gender,
                                  onChanged: (Gender val) {
                                    setState(
                                      () {
                                        _gender = val;
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Male",
                                  style: TextStyle(
                                    fontSize: width * 0.0475,
                                    color: Color(0xFF757575),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.575,
                                ),
                                Radio<Gender>(
                                  activeColor: Color(0xFFD12BD1),
                                  value: Gender.Male,
                                  groupValue: _gender,
                                  onChanged: (Gender val) {
                                    setState(
                                      () {
                                        _gender = val;
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Non-Binary",
                                  style: TextStyle(
                                    fontSize: width * 0.045,
                                    color: Color(0xFF757575),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.44,
                                ),
                                Radio<Gender>(
                                  activeColor: Color(0xFFD12BD1),
                                  value: Gender.NonBinary,
                                  groupValue: _gender,
                                  onChanged: (Gender val) {
                                    setState(
                                      () {
                                        _gender = val;
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Transgender Female",
                                  style: TextStyle(
                                    fontSize: width * 0.045,
                                    color: Color(0xFF757575),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.25,
                                ),
                                Radio<Gender>(
                                  activeColor: Color(0xFFD12BD1),
                                  value: Gender.TransgenderFemale,
                                  groupValue: _gender,
                                  onChanged: (Gender val) {
                                    setState(
                                      () {
                                        _gender = val;
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Transgender Male",
                                  style: TextStyle(
                                    fontSize: width * 0.045,
                                    color: Color(0xFF757575),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.3,
                                ),
                                Radio<Gender>(
                                  activeColor: Color(0xFFD12BD1),
                                  value: Gender.TransgendeMale,
                                  groupValue: _gender,
                                  onChanged: (Gender val) {
                                    setState(
                                      () {
                                        _gender = val;
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Transgender",
                                  style: TextStyle(
                                    fontSize: width * 0.045,
                                    color: Color(0xFF757575),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.415,
                                ),
                                Radio<Gender>(
                                  activeColor: Color(0xFFD12BD1),
                                  value: Gender.Transgender,
                                  groupValue: _gender,
                                  onChanged: (Gender val) {
                                    setState(
                                      () {
                                        _gender = val;
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.03,
                    left: width * 0.05,
                    right: width * 0.05),
                child: Container(
                  height: height * 0.47,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(18.0),
                      border: Border.all(color: Color(0xFFE0E0E0))),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.015, left: width * 0.06),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.3),
                              child: Container(
                                child: Text(
                                  "Sexuality",
                                  style: TextStyle(
                                      fontSize: width * 0.05,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF424242)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Straight",
                                  style: TextStyle(
                                    fontSize: width * 0.045,
                                    color: Color(0xFF757575),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.515,
                                ),
                                Radio<Sexuality>(
                                  activeColor: Color(0xFFD12BD1),
                                  value: Sexuality.Straight,
                                  groupValue: _sex,
                                  onChanged: (Sexuality val) {
                                    setState(
                                      () {
                                        _sex = val;
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Gay",
                                  style: TextStyle(
                                    fontSize: width * 0.0475,
                                    color: Color(0xFF757575),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.6,
                                ),
                                Radio<Sexuality>(
                                  activeColor: Color(0xFFD12BD1),
                                  value: Sexuality.Gay,
                                  groupValue: _sex,
                                  onChanged: (Sexuality val) {
                                    setState(
                                      () {
                                        _sex = val;
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Lesbian",
                                  style: TextStyle(
                                    fontSize: width * 0.046,
                                    color: Color(0xFF757575),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.52,
                                ),
                                Radio<Sexuality>(
                                  activeColor: Color(0xFFD12BD1),
                                  value: Sexuality.Lesbian,
                                  groupValue: _sex,
                                  onChanged: (Sexuality val) {
                                    setState(
                                      () {
                                        _sex = val;
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Bisexual",
                                  style: TextStyle(
                                    fontSize: width * 0.0457,
                                    color: Color(0xFF757575),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.51,
                                ),
                                Radio<Sexuality>(
                                  activeColor: Color(0xFFD12BD1),
                                  value: Sexuality.Bisexual,
                                  groupValue: _sex,
                                  onChanged: (Sexuality val) {
                                    setState(
                                      () {
                                        _sex = val;
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Pansexual",
                                  style: TextStyle(
                                    fontSize: width * 0.045,
                                    color: Color(0xFF757575),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.476,
                                ),
                                Radio<Sexuality>(
                                  activeColor: Color(0xFFD12BD1),
                                  value: Sexuality.Pansexual,
                                  groupValue: _sex,
                                  onChanged: (Sexuality val) {
                                    setState(
                                      () {
                                        _sex = val;
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Transgender",
                                  style: TextStyle(
                                    fontSize: width * 0.045,
                                    color: Color(0xFF757575),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.425,
                                ),
                                Radio<Sexuality>(
                                  activeColor: Color(0xFFD12BD1),
                                  value: Sexuality.Transgender,
                                  groupValue: _sex,
                                  onChanged: (Sexuality val) {
                                    setState(
                                      () {
                                        _sex = val;
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.05,
                    left: width * 0.05,
                    right: width * 0.05),
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
              SizedBox(
                height: height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
