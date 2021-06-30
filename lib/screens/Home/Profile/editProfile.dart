import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: height * 0.05, left: width * 0.05),
                  child: Container(
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Color(0xFFD12BD1),
                            size: width * 0.08,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.2,
                        ),
                        Text(
                          "Edit Profile",
                          style: TextStyle(
                              fontSize: width * 0.06,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: width * 0.18,
                        ),
                        InkWell(
                          child: Icon(
                            Icons.more_horiz,
                            color: Color(0xFFD12BD1),
                            size: width * 0.1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.03,
                      left: width * 0.1,
                      right: width * 0.06),
                  child: CustomContainer(
                      fontSize: 0.036,
                      text1: "About Karter",
                      text2:
                          "Fashion lover, Other stuff that’s mildly interesting.",
                      width: width,
                      height: height),
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Container(
                  width: width * 1,
                  child: Divider(
                    indent: 40,
                    endIndent: 50,
                    thickness: 0.8,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.0045,
                      left: width * 0.1,
                      right: width * 0.02),
                  child: CustomContainer(
                      fontSize: 0.04,
                      text1: "Age",
                      text2: "23",
                      width: width,
                      height: height),
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Container(
                  width: width * 1,
                  child: Divider(
                    indent: 40,
                    endIndent: 50,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.0045,
                      left: width * 0.1,
                      right: width * 0.02),
                  child: CustomContainer(
                      fontSize: 0.04,
                      text1: "Living in",
                      text2: "Madrid, Spain",
                      width: width,
                      height: height),
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Container(
                  width: width * 1,
                  child: Divider(
                    indent: 40,
                    endIndent: 50,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.0045,
                      left: width * 0.1,
                      right: width * 0.55),
                  child: CustomContainer(
                      fontSize: 0.04,
                      text1: "Gender",
                      text2: "Transgender Male",
                      width: width,
                      height: height),
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Container(
                  width: width * 1,
                  child: Divider(
                    indent: 40,
                    endIndent: 50,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.0045,
                      left: width * 0.1,
                      right: width * 0.02),
                  child: CustomContainer(
                      fontSize: 0.04,
                      text1: "Passions",
                      text2: "Fashion, Instagram, Style, Art, Drawing, Poetry",
                      width: width,
                      height: height),
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Container(
                  width: width * 1,
                  child: Divider(
                    indent: 40,
                    endIndent: 50,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.0045,
                      left: width * 0.1,
                      right: width * 0.63),
                  child: CustomContainer(
                      fontSize: 0.04,
                      text1: "Profession",
                      text2: "Fashion Critic",
                      width: width,
                      height: height),
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Container(
                  width: width * 1,
                  child: Divider(
                    indent: 40,
                    endIndent: 50,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.0045,
                      left: width * 0.1,
                      right: width * 0.02),
                  child: CustomContainer(
                      fontSize: 0.04,
                      text1: "Social media",
                      text2: "Instagram",
                      width: width,
                      height: height),
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Container(
                  width: width * 1,
                  child: Divider(
                    indent: 40,
                    endIndent: 50,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.0045,
                      left: width * 0.1,
                      right: width * 0.02),
                  child: CustomContainer(
                      fontSize: 0.04,
                      text1: "Show my instagram photos",
                      text2: "Yes",
                      width: width,
                      height: height),
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Container(
                  width: width * 1,
                  child: Divider(
                    indent: 40,
                    endIndent: 50,
                    thickness: 1,
                  ),
                ),
                Container(
                  height: height * 0.09545,
                  width: width * 1.8,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.02),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(AppRoutes.innerProfile);
                          },
                          child: Container(
                            width: width * 0.25,
                            height: height * 0.05,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22.0),
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Color(0xFF532253),
                                      Color(0xFFD12BD1)
                                    ])),
                            child: Center(
                              child: Text(
                                "Done",
                                style: TextStyle(
                                    fontSize: width * 0.04,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatefulWidget {
  final double fontSize;
  final String text1;
  final String text2;
  const CustomContainer({
    Key key,
    @required this.text1,
    @required this.fontSize,
    @required this.text2,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text1,
            style: TextStyle(
                fontSize: widget.width * 0.05, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: widget.height * 0.01,
          ),
          Text(
            widget.text2,
            style: TextStyle(
                fontSize: widget.width * widget.fontSize,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
