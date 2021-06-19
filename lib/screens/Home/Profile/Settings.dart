import 'dart:ui';
import 'package:goldidate/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  double value = 0.0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.05, left: width * 0.06),
                child: Row(
                  children: [
                    InkWell(
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xFFD12BD1),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.24,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.03,
                    left: width * 0.05,
                    right: width * 0.05),
                child: Container(
                  height: height * 0.10,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: Color(0xFFD12BD1)),
                  child: Padding(
                    padding: EdgeInsets.only(top: height * 0.02),
                    child: Column(
                      children: [
                        Text(
                          "Goldidate Plus",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                        Text(
                          "Unlimited likes & more!",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
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
                child: CustomCard(height: height, width: width),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.03,
                    left: width * 0.05,
                    right: width * 0.05),
                child: Container(
                  height: height * 0.07,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFE0E0E0),
                    ),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.05),
                    child: Row(
                      children: [
                        Text(
                          "Phone Number",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color(0xFF757575),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: width * 0.18,
                        ),
                        Text(
                          "+1 354 112 2376",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF757575),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.07,
                        ),
                        InkWell(
                            child: Icon(
                          Icons.navigate_next,
                          color: Color(0xFF757575),
                        )),
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
                  height: height * 0.15,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFE0E0E0),
                    ),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.015, left: width * 0.06),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color(0xFFBDBDBD),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              "Current Location",
                              style: TextStyle(
                                  fontSize: 17.0, color: Color(0xFF757575)),
                            ),
                            SizedBox(
                              width: width * 0.4,
                            ),
                            Image(
                              image: AssetImage(
                                  Common.assetsImages + "check button.png"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Text(
                              "Add a new location",
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFD12BD1),
                              ),
                            ),
                          ],
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
                  height: height * 0.10,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      border: Border.all(color: Color(0xFFE0E0E0))),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.015, left: width * 0.06),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Show Me",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF424242)),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Text(
                              "Women",
                              style: TextStyle(
                                fontSize: 17.5,
                                color: Color(0xFF757575),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.6,
                            ),
                            InkWell(
                              child: Icon(
                                Icons.navigate_next,
                                color: Color(0xFF757575),
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
                              "Maximum distance",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF424242)),
                            ),
                            SizedBox(
                              width: width * 0.38,
                            ),
                            Text(
                              "30mi",
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

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.15,
      width: width * 1.5,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFE0E0E0),
        ),
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: height * 0.016, left: width * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Personal Info",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: height * 0.023,
            ),
            Row(
              children: [
                Text(
                  "Username",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF757575),
                  ),
                ),
                SizedBox(
                  width: width * 0.55,
                ),
                InkWell(
                  child: Icon(
                    Icons.navigate_next,
                    color: Color(0xFF757575),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Row(
              children: [
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF757575),
                  ),
                ),
                SizedBox(
                  width: width * 0.63,
                ),
                InkWell(
                  child: Icon(
                    Icons.navigate_next,
                    color: Color(0xFF757575),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
