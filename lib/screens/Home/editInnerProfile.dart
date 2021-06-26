import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class InnerProfile extends StatefulWidget {
  @override
  _InnerProfileState createState() => _InnerProfileState();
}

class _InnerProfileState extends State<InnerProfile> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(AppRoutes.Tabview);
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                Common.assetsImages + "Man.png",
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.05, left: width * 0.08),
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: width * 0.1,
                      ),
                      SizedBox(
                        width: width * 0.65,
                      ),
                      Image(
                        image: AssetImage(
                          Common.assetsImages + "Camera.png",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.55,
              ),
              Container(
                height: height * 0.34,
                width: width * 1.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.28),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Eliza Williams, ",
                                  style: TextStyle(
                                      fontSize: width * 0.055,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "23",
                                  style: TextStyle(
                                      fontSize: width * 0.055,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.08,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(AppRoutes.settings);
                                },
                                child: Container(
                                  height: height * 0.04,
                                  width: width * 0.04,
                                  child: Image(
                                    color: Color(0xFFD12BD1),
                                    image: AssetImage(Common.assetsImages +
                                        "Pencil icon.png"),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    elevation: 4.0,
                                    shape: CircleBorder(),
                                    primary: Colors.white,
                                    onPrimary: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.27, top: height * 0.005),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Art Manager",
                                  style: TextStyle(
                                    fontSize: width * 0.04,
                                    color: Color(0xFF757575),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFD12BD1),
                              ),
                              Container(
                                child: Text(
                                  "10 miles",
                                  style: TextStyle(
                                    fontSize: width * 0.042,
                                    color: Color(0xFF757575),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.015),
                        child: Container(
                          child: Center(
                            child: Text(
                              "Feminist. Cats. Other stuff that’s mildly interesting.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: width * 0.042,
                                color: Color(0xFF757575),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.025, left: width * 0.24),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Gender:",
                                  style: TextStyle(
                                    fontSize: width * 0.04,
                                    color: Color(0xFF757575),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Transgender Male",
                                  style: TextStyle(
                                    color: Color(0xFFD12BD1),
                                    fontSize: width * 0.04,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.025, left: width * 0.28),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Instagram:",
                                  style: TextStyle(
                                    fontSize: width * 0.04,
                                    color: Color(0xFF757575),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "@johndoe",
                                  style: TextStyle(
                                    color: Color(0xFFD12BD1),
                                    fontSize: width * 0.04,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
