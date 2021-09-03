import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class MyDirection extends StatefulWidget {
  @override
  _MyDirectionState createState() => _MyDirectionState();
}

class _MyDirectionState extends State<MyDirection> {
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
          "My Direction",
          style: TextStyle(
            color: Colors.black,
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
                child: Stack(
                  children: [
                    Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(Common.assetsImages + "map.png"),
                        ),
                      ),
                    ),
                    Positioned(
                        top: height * 0.27,
                        left: width * 0.20,
                        child: Image.asset(
                          Common.assetsImages + "location icon.png",
                          width: width * 0.055,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
