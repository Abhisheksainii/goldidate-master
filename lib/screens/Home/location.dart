import 'package:flutter/material.dart';

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
      "Dubai"
    ];
    final List<String> cities = <String>[
      "California",
      "Victoria",
      "New York",
      "GB",
      "North Holland",
      "California",
      "New South Wales",
      "IL",
      "Dubai"
    ];
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
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
                        width: width * 0.23,
                      ),
                      Text(
                        "Location",
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
                            child: Padding(
                              padding: EdgeInsets.only(bottom: height * 0.005),
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
              Container(
                height: height * 2,
                child: ListView.separated(
                  itemCount: states.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.02, left: width * 0.08),
                      child: Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color(0xFFD12BD1),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  states[index],
                                  style: TextStyle(
                                      fontSize: width * 0.048,
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
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
