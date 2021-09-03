import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    final List<String> states = <String>[
      "Los Angeles",
      "Melbourne",
      "New York",
      "London",
      "Amsterdam",
      "Los Angeles",
      "Sydney",
      "Tel Aviv-Yafo",
      "Dubai",
      "Los Angeles",
      "Melbourne",
      "New York",
      "London",
      "Amsterdam",
      "Los Angeles",
      "Sydney",
      "Tel Aviv-Yafo",
      "Dubai"
    ];
    final List<String> cities = <String>[
      "Los Angeles",
      "Melbourne",
      "New York",
      "London",
      "Amsterdam",
      "Los Angeles",
      "Sydney",
      "Tel Aviv-Yafo",
      "Dubai"
          "Los Angeles",
      "Melbourne",
      "New York",
      "London",
      "Amsterdam",
      "Los Angeles",
      "Sydney",
      "Tel Aviv-Yafo",
      "Dubai"
    ];
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "My Direction",
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.03,
                    left: width * 0.05,
                    right: width * 0.05),
                child: Container(
                  height: height * 0.06,
                  width: width * 1.5,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(
                      color: Color(0xFFE0E0E0),
                    ),
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.05, right: width * 0.05),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Color(0xFFBDBDBD),
                          ),
                          SizedBox(
                            width: width * 0.04,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(
                                    color: Color(0xFFBDBDBD),
                                    fontSize: width * 0.04),
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.my_location,
                            color: Color(0xFFBDBDBD),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.03),
                child: Container(
                  height: height * 2,
                  color: Colors.white,
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: states.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.mydirection);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: height * 0.02, left: width * 0.08),
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(bottom: height * 0.02),
                                  child: Image.asset(
                                    Common.assetsImages + "location icon.png",
                                    width: width * 0.055,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.028,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      states[index],
                                      style: TextStyle(
                                          fontSize: width * 0.044,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      cities[index],
                                      style: TextStyle(
                                          color: Color(0xFF757575),
                                          fontSize: width * 0.044,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Divider()
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
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
