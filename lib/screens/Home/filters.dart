import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/app_colors.dart';

enum Relationships {
  Friendship,
  Romanticrelationship,
  Seriousrelationship,
  Polyamoryrelationship
}
enum Gender {
  TransgenderFemale,
  TransgendeMale,
  Transgender,
  Female,
  Male,
  NonBinary
}
enum Sexuality { Straight, Gay, Lesbian, Bisexual, Pansexual, Transgender }

class Filters extends StatefulWidget {
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  bool switchValue = true;
  var selectedRange = RangeValues(0.2, 0.4);
  double value = 0.0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FA),
      appBar: AppBar(
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFFD19D43),
            size: width * 0.08,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Filter",
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
          color: Color(0xFFF5F6FA),
          child: Padding(
            padding: EdgeInsets.only(top: height * 0.05),
            child: Column(
              children: [
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
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.mydirection);
                  },
                  child: Details(
                    detailName: "LOCATION",
                    detailValue: "Tel Aviv, Israel",
                    haveIcon: true,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.gender);
                  },
                  child: Details(
                    detailName: "GENDER",
                    detailValue: "Male",
                    haveIcon: true,
                  ),
                ),
                Container(
                  height: height * 0.06,
                  width: double.infinity,
                  color: Color(0xFFF5F6FA),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                    child: Text(
                      "HEIGHT",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: width * 0.03,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: height * 0.058,
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
                    padding: EdgeInsets.only(
                        left: width * 0.04, right: width * 0.03),
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
                SearchingFor(),
                GenderSearch(),
                Container(
                  height: height * 0.06,
                  width: double.infinity,
                  color: Color(0xFFF5F6FA),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: width * 0.04, top: height * 0.02),
                    child: Text(
                      "AGE RANGE",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: width * 0.03,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: height * 0.058,
                  width: double.infinity,
                  color: Color(0xFFFFFFFF),
                  child: SliderTheme(
                    data: SliderThemeData(
                      thumbColor: Color(0xFFD19D43),
                      activeTrackColor: Color(0xFFD19D43),
                      trackHeight: 1,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 4),
                    ),
                    child: RangeSlider(
                        values: selectedRange,
                        onChanged: (value1) {
                          setState(() {
                            selectedRange = value1;
                          });
                        }),
                  ),
                ),
                Sexuality1(),
                SizedBox(
                  height: height * 0.025,
                ),
                Container(
                  height: height * 0.12,
                  width: width * 1.8,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.black87, blurRadius: 14.0)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.025),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamedAndRemoveUntil(
                                context, AppRoutes.Tabview, (route) => false);
                          },
                          child: Container(
                            width: width * 0.7,
                            height: height * 0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.0),
                              color: AppColors.goldColor,
                            ),
                            child: Center(
                              child: Text(
                                "Submit",
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

class Details extends StatelessWidget {
  Details({this.detailName, this.detailValue, this.haveIcon});
  bool haveIcon = false;
  String detailName;
  String detailValue;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height * 0.05,
          width: double.infinity,
          color: Color(0xFFF5F6FA),
          child: Padding(
            padding: EdgeInsets.only(left: width * 0.04, top: height * 0.014),
            child: Text(
              detailName,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: width * 0.03,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
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
                  detailValue,
                  style: TextStyle(
                    fontSize: width * 0.03,
                    color: Color(0xFFD19D43),
                  ),
                ),
                haveIcon
                    ? Icon(
                        Icons.arrow_forward_ios,
                        size: width * 0.045,
                        color: Color(0xFFD19D43),
                      )
                    : Text(""),
              ],
            ),
          ),
        ),
      ],
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
            width: 30.5,
            height: 15.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              border: Border.all(
                  color: _circleAnimation.value == Alignment.centerLeft
                      ? Colors.grey[400]
                      : Color(0xFFD19D43)),
              color: _circleAnimation.value == Alignment.centerLeft
                  ? Colors.white
                  : Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 2.0,
                bottom: 2.0,
                left: 2.0,
              ),
              child: Container(
                alignment:
                    widget.value ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  width: 13.5,
                  height: 13.5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _circleAnimation.value == Alignment.centerLeft
                          ? Colors.grey[400]
                          : Color(0xFFD19D43)),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class SearchingFor extends StatefulWidget {
  @override
  _SearchingForState createState() => _SearchingForState();
}

class _SearchingForState extends State<SearchingFor> {
  Relationships _relationships = Relationships.Romanticrelationship;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height * 0.065,
          width: double.infinity,
          color: Color(0xFFF5F6FA),
          child: Padding(
            padding: EdgeInsets.only(left: width * 0.04, top: height * 0.035),
            child: Text(
              "SEARCHING FOR",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: width * 0.03,
                fontWeight: FontWeight.w400,
              ),
            ),
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
                  "Friendship",
                  style: TextStyle(
                    fontSize: width * 0.033,
                    color: Colors.black,
                  ),
                ),
                Radio<Relationships>(
                  activeColor: AppColors.goldColor,
                  value: Relationships.Friendship,
                  groupValue: _relationships,
                  onChanged: (Relationships val) {
                    setState(
                      () {
                        _relationships = val;
                      },
                    );
                  },
                ),
              ],
            ),
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
                  "Romantic relationship",
                  style: TextStyle(
                    fontSize: width * 0.033,
                    color: Colors.black,
                  ),
                ),
                Radio<Relationships>(
                  activeColor: AppColors.goldColor,
                  value: Relationships.Romanticrelationship,
                  groupValue: _relationships,
                  onChanged: (Relationships val) {
                    setState(
                      () {
                        _relationships = val;
                      },
                    );
                  },
                ),
              ],
            ),
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
                  "Serious relationship",
                  style: TextStyle(
                    fontSize: width * 0.033,
                    color: Colors.black,
                  ),
                ),
                Radio<Relationships>(
                  activeColor: AppColors.goldColor,
                  value: Relationships.Seriousrelationship,
                  groupValue: _relationships,
                  onChanged: (Relationships val) {
                    setState(
                      () {
                        _relationships = val;
                      },
                    );
                  },
                ),
              ],
            ),
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
                  "Polyamory relationship",
                  style: TextStyle(
                    fontSize: width * 0.033,
                    color: Colors.black,
                  ),
                ),
                Radio<Relationships>(
                  activeColor: AppColors.goldColor,
                  value: Relationships.Polyamoryrelationship,
                  groupValue: _relationships,
                  onChanged: (Relationships val) {
                    setState(
                      () {
                        _relationships = val;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class GenderSearch extends StatefulWidget {
  @override
  _GenderSearchState createState() => _GenderSearchState();
}

class _GenderSearchState extends State<GenderSearch> {
  @override
  Widget build(BuildContext context) {
    Gender _gender = Gender.Female;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height * 0.065,
          width: double.infinity,
          color: Color(0xFFF5F6FA),
          child: Padding(
            padding: EdgeInsets.only(left: width * 0.04, top: height * 0.035),
            child: Text(
              "GENDER SEARCH",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: width * 0.03,
                fontWeight: FontWeight.w400,
              ),
            ),
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
                  "Female",
                  style: TextStyle(
                    fontSize: width * 0.033,
                    color: Colors.black,
                  ),
                ),
                Radio<Gender>(
                  activeColor: AppColors.goldColor,
                  value: Gender.Female,
                  groupValue: _gender,
                  onChanged: (val) {
                    setState(
                      () {
                        _gender = val;
                      },
                    );
                  },
                ),
              ],
            ),
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
                  "Male",
                  style: TextStyle(
                    fontSize: width * 0.033,
                    color: Colors.black,
                  ),
                ),
                Radio<Gender>(
                  activeColor: AppColors.goldColor,
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
                  "Non-Binary",
                  style: TextStyle(
                    fontSize: width * 0.033,
                    color: Colors.black,
                  ),
                ),
                Radio<Gender>(
                  activeColor: AppColors.goldColor,
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
                  "Transgender Female",
                  style: TextStyle(
                    fontSize: width * 0.033,
                    color: Colors.black,
                  ),
                ),
                Radio<Gender>(
                  activeColor: AppColors.goldColor,
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
          ),
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
                  "Transgender Male",
                  style: TextStyle(
                    fontSize: width * 0.033,
                    color: Colors.black,
                  ),
                ),
                Radio<Gender>(
                  activeColor: AppColors.goldColor,
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
          ),
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
                  "Transgender",
                  style: TextStyle(
                    fontSize: width * 0.033,
                    color: Colors.black,
                  ),
                ),
                Radio<Gender>(
                  activeColor: AppColors.goldColor,
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
          ),
        ),
      ],
    );
  }
}

class Sexuality1 extends StatefulWidget {
  @override
  _Sexuality1State createState() => _Sexuality1State();
}

class _Sexuality1State extends State<Sexuality1> {
  @override
  Widget build(BuildContext context) {
    Sexuality _sexuality = Sexuality.Bisexual;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height * 0.065,
          width: double.infinity,
          color: Color(0xFFF5F6FA),
          child: Padding(
            padding: EdgeInsets.only(left: width * 0.04, top: height * 0.035),
            child: Text(
              "SEXUALITY",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: width * 0.03,
                fontWeight: FontWeight.w400,
              ),
            ),
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
                  "Straight",
                  style: TextStyle(
                    fontSize: width * 0.033,
                    color: Colors.black,
                  ),
                ),
                Radio<Sexuality>(
                  activeColor: AppColors.goldColor,
                  value: Sexuality.Straight,
                  groupValue: _sexuality,
                  onChanged: (val) {
                    setState(
                      () {
                        _sexuality = val;
                      },
                    );
                  },
                ),
              ],
            ),
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
                  "Gay",
                  style: TextStyle(
                    fontSize: width * 0.033,
                    color: Colors.black,
                  ),
                ),
                Radio<Sexuality>(
                  activeColor: AppColors.goldColor,
                  value: Sexuality.Straight,
                  groupValue: _sexuality,
                  onChanged: (val) {
                    setState(
                      () {
                        _sexuality = val;
                      },
                    );
                  },
                ),
              ],
            ),
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
                  "Lesbian",
                  style: TextStyle(
                    fontSize: width * 0.033,
                    color: Colors.black,
                  ),
                ),
                Radio<Sexuality>(
                  activeColor: AppColors.goldColor,
                  value: Sexuality.Straight,
                  groupValue: _sexuality,
                  onChanged: (val) {
                    setState(
                      () {
                        _sexuality = val;
                      },
                    );
                  },
                ),
              ],
            ),
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
                  "Bisexual",
                  style: TextStyle(
                    fontSize: width * 0.033,
                    color: Colors.black,
                  ),
                ),
                Radio<Sexuality>(
                  activeColor: AppColors.goldColor,
                  value: Sexuality.Bisexual,
                  groupValue: _sexuality,
                  onChanged: (val) {
                    setState(
                      () {
                        _sexuality = val;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
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
                  "Pansexual",
                  style: TextStyle(
                    fontSize: width * 0.033,
                    color: Colors.black,
                  ),
                ),
                Radio<Sexuality>(
                  activeColor: AppColors.goldColor,
                  value: Sexuality.Pansexual,
                  groupValue: _sexuality,
                  onChanged: (val) {
                    setState(
                      () {
                        _sexuality = val;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
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
                  "Transgender",
                  style: TextStyle(
                    fontSize: width * 0.033,
                    color: Colors.black,
                  ),
                ),
                Radio<Sexuality>(
                  activeColor: AppColors.goldColor,
                  value: Sexuality.Transgender,
                  groupValue: _sexuality,
                  onChanged: (val) {
                    setState(
                      () {
                        _sexuality = val;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
