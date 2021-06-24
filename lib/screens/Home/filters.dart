import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';

class Filters extends StatefulWidget {
  @override
  _FiltersState createState() => _FiltersState();
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

class _FiltersState extends State<Filters> {
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
                        "Filters",
                        style: TextStyle(
                            fontSize: width * 0.06,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.03, left: width * 0.05),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.06),
                        child: Text(
                          "View Style",
                          style: TextStyle(
                              fontSize: width * 0.055,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ButtonBar(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Radio<ViewStyle>(
                                activeColor: Color(0xFFD12BD1),
                                value: ViewStyle.classicView,
                                groupValue: _character,
                                onChanged: (ViewStyle val) {
                                  setState(() {
                                    _character = val;
                                  });
                                },
                              ),
                              Text(
                                "Classic",
                                style: TextStyle(fontSize: width * 0.045),
                              ),
                              Radio<ViewStyle>(
                                activeColor: Color(0xFFD12BD1),
                                value: ViewStyle.galleryView,
                                groupValue: _character,
                                onChanged: (ViewStyle val) {
                                  setState(() {
                                    _character = val;
                                  });
                                },
                              ),
                              Text(
                                "Gallery",
                                style: TextStyle(fontSize: width * 0.045),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.11, top: height * 0.01),
                child: Container(
                  child: Text(
                    "Location",
                    style: TextStyle(
                        fontSize: width * 0.052, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.025, left: width * 0.05),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.location);
                  },
                  child: Container(
                    height: height * 0.08,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(24.0),
                      border: Border.all(
                        color: Color(0xFFE0E0E0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: width * 0.05),
                      child: Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color(0xFFBDBDBD),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "Current location",
                              style: TextStyle(fontSize: width * 0.045),
                            ),
                            Text(
                              "(Sans Francisco)",
                              style: TextStyle(
                                fontSize: width * 0.043,
                                color: Color(0xFFBDBDBD),
                              ),
                            ),
                          ],
                        ),
                      ),
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
                  height: height * 0.16,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Color(0xFFE0E0E0))),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.015, left: width * 0.06),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Distance",
                              style: TextStyle(
                                  fontSize: width * 0.046,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF424242)),
                            ),
                            SizedBox(
                              width: width * 0.48,
                            ),
                            Text(
                              "30mi",
                              style: TextStyle(
                                  fontSize: width * 0.04,
                                  color: Color(0xFF757575),
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: Colors.white,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 9.0),
                            activeTrackColor: Color(0xFFD12BD1),
                          ),
                          child: Container(
                            child: Slider(
                                // activeColor: Color(0xFFD12BD1),
                                min: 0.0,
                                max: 100.0,
                                value: value.toDouble(),
                                onChanged: (double newValue) {
                                  setState(() {
                                    value = newValue;
                                  });
                                }),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "3miles",
                                style: TextStyle(
                                  color: Color(0xFF757575),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.52,
                              ),
                              Text(
                                "100miles",
                                style: TextStyle(
                                  color: Color(0xFF757575),
                                ),
                              ),
                            ],
                          ),
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
                  height: height * 0.12,
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
                            Text(
                              "Interested",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF424242)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            Radio<Interests>(
                              activeColor: Color(0xFFD12BD1),
                              value: Interests.dating,
                              groupValue: _interest,
                              onChanged: (Interests val) {
                                setState(() {
                                  _interest = val;
                                });
                              },
                            ),
                            Text(
                              "Dating",
                              style: TextStyle(fontSize: width * 0.04),
                            ),
                            Radio<Interests>(
                              activeColor: Color(0xFFD12BD1),
                              value: Interests.friendShip,
                              groupValue: _interest,
                              onChanged: (Interests val) {
                                setState(() {
                                  _interest = val;
                                });
                              },
                            ),
                            Text(
                              "Friendship",
                              style: TextStyle(fontSize: width * 0.04),
                            ),
                            Radio<Interests>(
                              activeColor: Color(0xFFD12BD1),
                              value: Interests.business,
                              groupValue: _interest,
                              onChanged: (Interests val) {
                                setState(() {
                                  _interest = val;
                                });
                              },
                            ),
                            Expanded(
                              child: Text(
                                "Business",
                                // overflow: TextOverflow.fade,
                                style: TextStyle(fontSize: width * 0.04),
                              ),
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
                  height: height * 0.12,
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
                            Text(
                              "Age",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF424242)),
                            ),
                            SizedBox(
                              width: width * 0.58,
                            ),
                            Text(
                              "20-26",
                              style: TextStyle(
                                  fontSize: 17.0,
                                  color: Color(0xFF757575),
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: Colors.white,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 9.0),
                            activeTrackColor: Color(0xFFD12BD1),
                          ),
                          child: Container(
                            child: RangeSlider(
                              values: selectedRange,
                              onChanged: (RangeValues newRange) {
                                setState(() {
                                  selectedRange = newRange;
                                });
                              },
                            ),
                          ),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Gender",
                              style: TextStyle(
                                  fontSize: width * 0.05,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF424242)),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sexuality",
                              style: TextStyle(
                                  fontSize: width * 0.05,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF424242)),
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
            ],
          ),
        ),
      ),
    );
  }
}
