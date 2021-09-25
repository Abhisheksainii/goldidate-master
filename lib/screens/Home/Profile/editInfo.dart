import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/screens/Home/filters.dart';
import 'package:goldidate/screens/Home/passion.dart';
import 'package:goldidate/utils/app_colors.dart';
import 'package:goldidate/utils/common.dart';

class AddMedia extends StatefulWidget {
  @override
  _AddMediaState createState() => _AddMediaState();
}

class _AddMediaState extends State<AddMedia> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFF5F6FA),
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text(
                  "Edit",
                  style: TextStyle(
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.w600,
                    color: AppColors.goldColor,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Preview",
                  style: TextStyle(
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Edit Info",
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
        body: TabBarView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 0.04),
              child: ImagesGrid(width: width, height: height),
            ),
            Text("Nothing to show"),
          ],
        ),
      ),
    );
  }
}

class belowText extends StatelessWidget {
  const belowText({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height * 0.02, left: width * 0.2),
      child: Row(
        children: [
          Text(
            "Use Drag’n’Drop to sort the photos!",
            style:
                TextStyle(fontSize: width * 0.042, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}

class ImagesGrid extends StatefulWidget {
  const ImagesGrid({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  _ImagesGridState createState() => _ImagesGridState();
}

class _ImagesGridState extends State<ImagesGrid> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double value = 0.0;
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 3.6;
    final double itemWidth = size.width / 2;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: widget.width * 0.06),
            child: GridView.count(
              childAspectRatio: (itemWidth / itemHeight),
              shrinkWrap: true,
              crossAxisCount: 3,
              children: [
                PhotoContainer(
                  height: widget.height,
                  width: widget.width,
                  pathName: "AM1.png",
                ),
                PhotoContainer(
                  height: widget.height,
                  width: widget.width,
                  pathName: "AM2.png",
                ),
                PhotoContainer(
                  height: widget.height,
                  width: widget.width,
                  pathName: "AM3.png",
                ),
                PhotoContainer(
                  height: widget.height,
                  width: widget.width,
                  pathName: "AM4.png",
                ),
                PhotoContainer(
                  height: widget.height,
                  width: widget.width,
                  pathName: "AM5.png",
                ),
                PhotoContainer(
                  height: widget.height,
                  width: widget.width,
                  pathName: "AM6.png",
                ),
                PhotoContainer(
                  height: widget.height,
                  width: widget.width,
                  pathName: "AM7.png",
                ),
                PhotoContainer(
                  height: widget.height,
                  width: widget.width,
                  pathName: "AM8.png",
                ),
                EndBox(height: widget.height, width: widget.width),
              ],
            ),
          ),
          Container(
            height: widget.height * 0.06,
            width: double.infinity,
            color: Color(0xFFF5F6FA),
            child: Padding(
              padding: EdgeInsets.only(
                  left: widget.width * 0.04, top: widget.height * 0.02),
              child: Center(
                child: Text(
                  "Hold, drag and drop to reordering photos",
                  style: TextStyle(
                    color: AppColors.goldColor,
                    fontSize: widget.width * 0.03,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Details(
            detailName: "NAME",
            detailValue: "Simon Carter",
            haveIcon: false,
          ),
          Details(
            detailName: "BIRTHDAY",
            detailValue: "08/01/1989",
            haveIcon: false,
          ),
          Container(
            height: widget.height * 0.06,
            width: double.infinity,
            color: Color(0xFFF5F6FA),
            child: Padding(
              padding: EdgeInsets.only(
                  left: widget.width * 0.04,
                  top: widget.height * 0.02,
                  right: width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: width * 0.03,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "1m 69cm",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: width * 0.03,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: widget.height * 0.058,
            width: double.infinity,
            color: Color(0xFFFFFFFF),
            child: SliderTheme(
              data: SliderThemeData(
                thumbColor: Color(0xFFD19D43),
                activeTrackColor: Color(0xFFD19D43),
                trackHeight: 1,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
              ),
              child: Slider(
                  value: value,
                  onChanged: (value1) {
                    setState(() {
                      value = value1;
                    });
                  }),
            ),
          ),
          Divider(
            height: 0.5,
          ),
          Container(
            height: height * 0.058,
            width: double.infinity,
            color: Color(0xFFFFFFFF),
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.04, right: width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Show on profile",
                    style: TextStyle(
                      fontSize: width * 0.03,
                      color: Color(0xFFD19D43),
                    ),
                  ),
                  CustomSwitch(
                      value: switchValue,
                      onChanged: (value) {
                        setState(() {
                          switchValue = value;
                        });
                      })
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.02),
            child: Container(
              height: height * 0.06,
              width: double.infinity,
              color: Color(0xFFF5F6FA),
              child: Padding(
                padding:
                    EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                child: Text(
                  "LIVING IN",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: width * 0.03,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.mydirection);
            },
            child: Details1(
              detailValue: "Tel Aviv, Israel",
              haveExtraDetail: false,
              extradetailName: "Info@goldidate.com",
              colorExtra: AppColors.goldColor,
              colorName: AppColors.goldColor,
              colorIcon: AppColors.goldColor,
              isBold: false,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.02),
            child: Container(
              height: height * 0.06,
              width: double.infinity,
              color: Color(0xFFF5F6FA),
              child: Padding(
                padding:
                    EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                child: Text(
                  "GENDER",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: width * 0.03,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.gender);
            },
            child: Details1(
              detailValue: "Male",
              haveExtraDetail: false,
              extradetailName: "Info@goldidate.com",
              colorExtra: AppColors.goldColor,
              colorName: AppColors.goldColor,
              colorIcon: AppColors.goldColor,
              isBold: false,
            ),
          ),
          Container(
            height: height * 0.05,
            width: double.infinity,
            color: Color(0xFFF5F6FA),
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.04, top: height * 0.014),
              child: Text(
                "MYSELF",
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: width * 0.03,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            height: height * 0.2,
            width: width,
            color: Color(0xFFFFFFFF),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: width * 0.04,
                      right: width * 0.03,
                      top: height * 0.04),
                  child: Text(
                    "Love life, and searching for a new magical adventure. I’m a photographer, yoga enthusiast, love to relax but very adventurous and lover of superhero movies.",
                    style: TextStyle(
                      fontSize: width * 0.035,
                      color: Color(0xFFD19D43),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: width * 0.02, bottom: height * 0.02),
                  child: Container(
                    child: Text("500"),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 0.5,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.bio);
            },
            child: Details1(
              detailValue: "Edit Bio",
              haveExtraDetail: false,
              extradetailName: "Info@goldidate.com",
              colorExtra: AppColors.goldColor,
              colorName: AppColors.goldColor,
              colorIcon: AppColors.goldColor,
              isBold: false,
            ),
          ),
          Container(
            height: height * 0.05,
            width: double.infinity,
            color: Color(0xFFF5F6FA),
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.04, top: height * 0.014),
              child: Text(
                "PASSIONS",
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: width * 0.03,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            height: height * 0.2,
            width: width,
            color: Color(0xFFFFFFFF),
            child: Padding(
              padding: EdgeInsets.only(
                  top: height * 0.03, left: width * 0.06, right: width * 0.03),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  CHIP(heading: "Yoga", widht: width, height: height),
                  CHIP(heading: "Rock climbing", widht: width, height: height),
                  CHIP(
                      heading: "Learning new skills",
                      widht: width,
                      height: height),
                  CHIP(heading: "Online courses", widht: width, height: height),
                  CHIP(heading: "Crafting", widht: width, height: height),
                  CHIP(heading: "Coaching", widht: width, height: height),
                  CHIP(
                      heading: "Playing an instrument",
                      widht: width,
                      height: height),
                ],
              ),
            ),
          ),
          Divider(
            height: 0.5,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.passion);
            },
            child: Details1(
              detailValue: "Add Passions",
              haveExtraDetail: false,
              extradetailName: "Info@goldidate.com",
              colorExtra: AppColors.goldColor,
              colorName: AppColors.goldColor,
              colorIcon: AppColors.goldColor,
              isBold: false,
            ),
          ),
          Details(
            detailName: "OCCUPATION",
            detailValue: "Art Director at Microsoft ",
            haveIcon: false,
          ),
          Container(
            height: height * 0.05,
            width: double.infinity,
            color: Color(0xFFF5F6FA),
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.04, top: height * 0.014),
              child: Text(
                "EDUCATION",
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: width * 0.03,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            height: height * 0.16,
            width: width,
            color: Color(0xFFFFFFFF),
            child: Padding(
              padding: EdgeInsets.only(
                  top: height * 0.03, left: width * 0.06, right: width * 0.03),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  CHIP(
                      heading: "Ruppin technological college of engineers",
                      widht: width,
                      height: height),
                  CHIP(
                      heading: "Apple seeds academy",
                      widht: width,
                      height: height),
                  CHIP(
                      heading: "Qa Experts College ",
                      widht: width,
                      height: height),
                ],
              ),
            ),
          ),
          Divider(
            height: 0.5,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.education);
            },
            child: Details1(
              detailValue: "Add Education",
              haveExtraDetail: false,
              extradetailName: "Info@goldidate.com",
              colorExtra: AppColors.goldColor,
              colorName: AppColors.goldColor,
              colorIcon: AppColors.goldColor,
              isBold: false,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.levelofEducation);
            },
            child: Details(
              detailName: "LEVEL OF EDUCATION",
              detailValue: "Engineer",
              haveIcon: true,
            ),
          ),
          Details(
            detailName: "FAVORITE ANIMAL",
            detailValue: "Dogs ",
            haveIcon: true,
          ),
          Details(
            detailName: "FAVORITE FOOD",
            detailValue: "Pizza",
            haveIcon: true,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.religious);
            },
            child: Details(
              detailName: "RELIGIOUS",
              detailValue: "Atheist ",
              haveIcon: true,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.sexuality);
            },
            child: Details(
              detailName: "SEXUAL ORIENTATION",
              detailValue: "Straight",
              haveIcon: true,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.searching);
            },
            child: Details(
              detailName: "SEARCHING FOR",
              detailValue: "Friendship ",
              haveIcon: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.03, bottom: height * 0.06),
            child: Container(
              height: height * 0.3,
              width: width * 4.5,
              decoration: BoxDecoration(
                color: Color(0xFFF5F6FA),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: height * 0.02),
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Get more Gift coins",
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Text(
                        "Boost your profile once a month",
                        style: TextStyle(
                          color: Color(0xFF757575),
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        height: height * 0.02,
                        width: width * 0.08,
                        child: Image(
                          image: AssetImage(
                              Common.assetsImages + "text slider.png"),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        width: width * 0.8,
                        height: height * 0.065,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFFD9B372)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.0),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(AppRoutes.goldidatePlus);
                            },
                            child: Row(
                              children: [
                                Container(
                                  height: height * 0.08,
                                  width: width * 0.08,
                                  child: Image(
                                    image: AssetImage(
                                      Common.assetsImages + "bigcoin.png",
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.14,
                                ),
                                Text(
                                  "Get more Coins",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Details1 extends StatelessWidget {
  Details1(
      {this.detailValue,
      this.haveExtraDetail,
      this.isBold,
      this.colorName,
      this.colorExtra,
      this.colorIcon,
      this.extradetailName});
  bool haveExtraDetail = false;
  bool isBold = false;
  String detailName;
  String detailValue;
  String extradetailName;
  Color colorName;
  Color colorExtra;
  Color colorIcon;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.058,
      width: double.infinity,
      color: Color(0xFFFFFFFF),
      child: Padding(
        padding: EdgeInsets.only(left: width * 0.04, right: width * 0.03),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              detailValue,
              style: TextStyle(
                fontSize: width * 0.03,
                color: colorName,
              ),
            ),
            haveExtraDetail
                ? Padding(
                    padding: EdgeInsets.only(left: width * 0.2),
                    child: Container(
                      height: height * 0.05,
                      width: width * 0.35,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.04, top: height * 0.014),
                        child: Text(
                          extradetailName,
                          style: TextStyle(
                            color: colorExtra,
                            fontSize: width * 0.03,
                            fontWeight:
                                isBold ? FontWeight.bold : FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  )
                : Text(""),
            Icon(
              Icons.arrow_forward_ios,
              size: width * 0.045,
              color: colorIcon,
            )
          ],
        ),
      ),
    );
  }
}

class EndBox extends StatelessWidget {
  const EndBox({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
          ),
          height: height * 0.145,
          width: width * 0.23,
        ),
        Positioned(
            top: height * 0.105,
            left: width * 0.17,
            child: Image.asset(
              Common.assetsImages + "add image icon.png",
              width: width * 0.035,
            )),
      ],
    );
  }
}

class PhotoContainer extends StatelessWidget {
  const PhotoContainer({
    Key key,
    @required this.height,
    @required this.pathName,
    @required this.width,
  }) : super(key: key);
  final String pathName;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height * 0.15,
          width: width * 0.23,
          child: Image(
            image: AssetImage(Common.assetsImages + pathName),
          ),
        ),
        Positioned(
          top: height * 0.105,
          left: width * 0.17,
          child: Image.asset(
            Common.assetsImages + "cross icon.png",
            width: width * 0.035,
          ),
        ),
      ],
    );
  }
}
