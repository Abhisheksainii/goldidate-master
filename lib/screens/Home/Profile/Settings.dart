import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

enum distance { Km, Mi }

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  var selectedRange = RangeValues(0.2, 0.4);
  double value = 0.0;
  bool _enable = true;
  bool _enable2 = true;
  bool _enable3 = true;
  bool _enable4 = true;
  bool _enable5 = true;
  distance _dist = distance.Km;
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
                      onTap: () {
                        Navigator.of(context).pushNamed(AppRoutes.Tabview);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xFFD12BD1),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.26,
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
                child: InkWell(
                  onTap: () =>
                      Navigator.of(context).pushNamed(AppRoutes.goldidatePlus),
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
                    color: Color(0xfff5f5f5),
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
                              fontSize: width * 0.04,
                              color: Color(0xFF757575),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: width * 0.14,
                        ),
                        Text(
                          "+1 354 112 2376",
                          style: TextStyle(
                            fontSize: width * 0.038,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF757575),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.028,
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
                  height: height * 0.16,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                    color: Color(0xfff5f5f5),
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
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(AppRoutes.location);
                          },
                          child: Text(
                            "Location",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w600),
                          ),
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
                                  fontSize: width * 0.04,
                                  color: Color(0xFF757575)),
                            ),
                            SizedBox(
                              width: width * 0.34,
                            ),
                            Image(
                              image: AssetImage(
                                  Common.assetsImages + "check button.png"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                        Row(
                          children: [
                            Text(
                              "Add a new location",
                              style: TextStyle(
                                fontSize: width * 0.043,
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
                      color: Color(0xfff5f5f5),
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
                          height: height * 0.015,
                        ),
                        Row(
                          children: [
                            Text(
                              "Women",
                              style: TextStyle(
                                fontSize: width * 0.042,
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
                              "Maximum distance",
                              style: TextStyle(
                                  fontSize: width * 0.046,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF424242)),
                            ),
                            SizedBox(
                              width: width * 0.3,
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
                  height: height * 0.08,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                    color: Color(0xfff5f5f5),
                    border: Border.all(
                      color: Color(0xFFE0E0E0),
                    ),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.06),
                    child: Row(
                      children: [
                        Text(
                          "Share my feed",
                          style: TextStyle(
                              fontSize: width * 0.044,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF424242)),
                        ),
                        SizedBox(width: width * 0.42),
                        CustomSwitch(
                          value: _enable,
                          onChanged: (bool val) {
                            setState(() {
                              _enable = val;
                            });
                          },
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
                  height: height * 0.08,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                    color: Color(0xfff5f5f5),
                    border: Border.all(
                      color: Color(0xFFE0E0E0),
                    ),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.06),
                    child: Row(
                      children: [
                        Text(
                          "Recommended sort",
                          style: TextStyle(
                              fontSize: width * 0.045,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF424242)),
                        ),
                        SizedBox(width: width * 0.31),
                        CustomSwitch(
                          value: _enable2,
                          onChanged: (bool val) {
                            setState(() {
                              _enable2 = val;
                            });
                          },
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
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(18.0),
                      border: Border.all(color: Color(0xFFE0E0E0))),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.015, left: width * 0.06),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Data Usage",
                          style: TextStyle(
                              fontSize: width * 0.044,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF424242)),
                        ),
                        SizedBox(
                          height: height * 0.013,
                        ),
                        Row(
                          children: [
                            Text(
                              "Autoplay videos",
                              style: TextStyle(
                                fontSize: width * 0.042,
                                color: Color(0xFF757575),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.4,
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
                  height: height * 0.08,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                    color: Color(0xfff5f5f5),
                    border: Border.all(
                      color: Color(0xFFE0E0E0),
                    ),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.06),
                    child: Row(
                      children: [
                        Text(
                          "Show me in top picks",
                          style: TextStyle(
                              fontSize: width * 0.044,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF424242)),
                        ),
                        SizedBox(width: width * 0.29),
                        CustomSwitch(
                          value: _enable3,
                          onChanged: (bool val) {
                            setState(() {
                              _enable3 = val;
                            });
                          },
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
                  height: height * 0.08,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                    color: Color(0xfff5f5f5),
                    border: Border.all(
                      color: Color(0xFFE0E0E0),
                    ),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.06),
                    child: Row(
                      children: [
                        Text(
                          "Swipe Surge",
                          style: TextStyle(
                              fontSize: width * 0.044,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF424242)),
                        ),
                        SizedBox(width: width * 0.45),
                        CustomSwitch(
                          value: _enable4,
                          onChanged: (bool val) {
                            setState(() {
                              _enable4 = val;
                            });
                          },
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
                  height: height * 0.08,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                    color: Color(0xfff5f5f5),
                    border: Border.all(
                      color: Color(0xFFE0E0E0),
                    ),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.06),
                    child: Row(
                      children: [
                        Text(
                          "Active status",
                          style: TextStyle(
                              fontSize: width * 0.044,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF424242)),
                        ),
                        SizedBox(width: width * 0.45),
                        CustomSwitch(
                          value: _enable5,
                          onChanged: (bool val) {
                            setState(() {
                              _enable5 = val;
                            });
                          },
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
                  height: height * 0.2,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                    color: Color(0xfff5f5f5),
                    border: Border.all(
                      color: Color(0xFFE0E0E0),
                    ),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.016, left: width * 0.06),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Show distance in",
                          style: TextStyle(
                              fontSize: width * 0.045,
                              fontWeight: FontWeight.w600),
                        ),
                        Column(
                          children: [
                            ListTile(
                              title: Text(
                                "Km.",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF757575),
                                ),
                              ),
                              trailing: Radio<distance>(
                                activeColor: Color(0xFFD12BD1),
                                value: distance.Km,
                                groupValue: _dist,
                                onChanged: (distance value) {
                                  setState(() {
                                    _dist = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: Text(
                                "Mi.",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF757575),
                                ),
                              ),
                              trailing: Radio<distance>(
                                activeColor: Color(0xFFD12BD1),
                                value: distance.Km,
                                groupValue: _dist,
                                onChanged: (distance value) {
                                  setState(() {
                                    _dist = value;
                                  });
                                },
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
                  height: height * 0.18,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                    color: Color(0xfff5f5f5),
                    border: Border.all(
                      color: Color(0xFFE0E0E0),
                    ),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.016, left: width * 0.06),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payment account",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: height * 0.023,
                        ),
                        Row(
                          children: [
                            Text(
                              "Manage payment account",
                              style: TextStyle(
                                fontSize: width * 0.044,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF757575),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.22,
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
                              "Manage payment account",
                              style: TextStyle(
                                fontSize: width * 0.044,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF757575),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.22,
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
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(18.0),
                      border: Border.all(color: Color(0xFFE0E0E0))),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.015, left: width * 0.06),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Contact Us",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF424242)),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        Row(
                          children: [
                            Text(
                              "Help & Support",
                              style: TextStyle(
                                fontSize: width * 0.044,
                                color: Color(0xFFD12BD1),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.39,
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
                  height: height * 0.08,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                    color: Color(0xfff5f5f5),
                    border: Border.all(
                      color: Color(0xFFE0E0E0),
                    ),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: width * 0.06),
                    child: Row(
                      children: [
                        Text(
                          "Share Dater",
                          style: TextStyle(
                              fontSize: width * 0.045,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF424242)),
                        ),
                        SizedBox(width: width * 0.45),
                        InkWell(
                          child: Icon(
                            Icons.navigate_next,
                            color: Color(0xFF757575),
                          ),
                        ),
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
                child: InkWell(
                  onTap: () {
                    return showDialog(
                      context: context,
                      builder: (BuildContext context) => CupertinoAlertDialog(
                        title: Text("Logout?"),
                        content: Text("Are you sure you want to log out?"),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Logout'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
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
                          "Logout",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700),
                        ),
                      )),
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
      height: height * 0.16,
      width: width * 1.5,
      decoration: BoxDecoration(
        color: Color(0xfff5f5f5),
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
                  width: width * 0.52,
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
              height: height * 0.013,
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
                  width: width * 0.6,
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

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  CustomSwitch({Key key, this.value, this.onChanged}) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  Animation _circleAnimation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
            end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
          },
          child: Container(
            width: 45.0,
            height: 28.0,
            decoration: BoxDecoration(
              border: Border.all(
                  color: _circleAnimation.value == Alignment.centerLeft
                      ? Colors.grey[400]
                      : Color(0xFFD12BD1)),
              borderRadius: BorderRadius.circular(24.0),
              color: _circleAnimation.value == Alignment.centerLeft
                  ? Colors.white
                  : Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 2.0, bottom: 2.0, right: 2.0, left: 2.0),
              child: Container(
                alignment:
                    widget.value ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _circleAnimation.value == Alignment.centerLeft
                          ? Colors.grey[400]
                          : Color(0xFFD12BD1)),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
