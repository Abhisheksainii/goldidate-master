import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:goldidate/utils/app_colors.dart';

class Passions extends StatefulWidget {
  @override
  _PassionsState createState() => _PassionsState();
}

class _PassionsState extends State<Passions> {
  @override
  Widget build(BuildContext context) {
    final width1 = MediaQuery.of(context).size.width;
    final height1 = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height1 * 0.08,
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: 10),
                color: Colors.grey.shade200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Passions",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: width1 * 0.06),
                    ),
                    SizedBox(width: width1 * 0.22),
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Done",
                          style: TextStyle(
                              color: AppColors.goldColor,
                              fontSize: width1 * 0.045),
                        )),
                    SizedBox(
                      width: width1 * 0.03,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height1 * 0.02,
              ),
              chipp(
                  heading: "Health and Activities:",
                  width: width1,
                  height: height1),
              SizedBox(
                height: height1 * 0.04,
              ),
              chipp1(
                  heading: "Learning and Growing:",
                  width: width1,
                  height: height1),
              SizedBox(
                height: height1 * 0.04,
              ),
              chipp2(
                  heading: "Living a Good Life:",
                  width: width1,
                  height: height1),
              SizedBox(
                height: height1 * 0.04,
              ),
              chipp3(
                  heading: "Health and Activities:",
                  width: width1,
                  height: height1),
              SizedBox(
                height: height1 * 0.04,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class chipp extends StatefulWidget {
  chipp({
    Key key,
    @required this.heading,
    @required this.width,
    @required this.height,
  }) : super(key: key);
  final String heading;
  final double width;

  final double height;

  @override
  _chippState createState() => _chippState();
}

class _chippState extends State<chipp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: widget.width * 0.025),
          child: Text(
            widget.heading,
            style: TextStyle(
                color: Colors.grey.shade600, fontSize: widget.width * 0.038),
          ),
        ),
        SizedBox(
          height: widget.height * 0.02,
        ),
        Padding(
          padding: EdgeInsets.only(
              left: widget.width * 0.06, right: widget.width * 0.06),
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              CHIP(
                heading: "Walking",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Running",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Dancing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Yoga",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Crossfit",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Pilates",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Swimming",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Hiking",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Horse Riding",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Gymnastics",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Weight Lifting",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Bowling",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Tennis",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Tennis",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Soccer",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Football",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Volleyball",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Rugby",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "BasketBall",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Golf",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Juggling",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Table tennis",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Ice skating",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Ice hockey",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: 'Snowboarding',
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Skateboarding",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Roller skating ",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Skiing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Water Skiing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Scuba driving",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Wind surfing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "surfing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Jet skiing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Sky diving",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Rock climbing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Cross country",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Fishing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Archery",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Boxing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Kickboxing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Capoeira",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Tai chi",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Karate",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Taekwondo",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Healthy eating",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Massage",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Personal hygiene",
                widht: widget.width,
                height: widget.height,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class chipp1 extends StatefulWidget {
  chipp1({
    Key key,
    @required this.heading,
    @required this.width,
    @required this.height,
  }) : super(key: key);
  final String heading;
  final double width;

  final double height;

  @override
  _chipp1State createState() => _chipp1State();
}

class _chipp1State extends State<chipp1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: widget.width * 0.025),
          child: Text(
            widget.heading,
            style: TextStyle(
                color: Colors.grey.shade600, fontSize: widget.width * 0.038),
          ),
        ),
        SizedBox(
          height: widget.height * 0.02,
        ),
        Padding(
          padding: EdgeInsets.only(
              left: widget.width * 0.06, right: widget.width * 0.06),
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              CHIP(
                heading: "Researching",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Experimenting",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Reading",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Self-help",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "books",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Online Courses",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Journaling",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Practicing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Learning new skills",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Knowledge",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Wisdom",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Personal finance",
                widht: widget.width,
                height: widget.height,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class chipp2 extends StatefulWidget {
  chipp2({
    Key key,
    @required this.heading,
    @required this.width,
    @required this.height,
  }) : super(key: key);
  final String heading;
  final double width;

  final double height;

  @override
  _chipp2State createState() => _chipp2State();
}

class _chipp2State extends State<chipp2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: widget.width * 0.025),
          child: Text(
            widget.heading,
            style: TextStyle(
                color: Colors.grey.shade600, fontSize: widget.width * 0.038),
          ),
        ),
        SizedBox(
          height: widget.height * 0.02,
        ),
        Padding(
          padding: EdgeInsets.only(
              left: widget.width * 0.06, right: widget.width * 0.06),
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              CHIP(
                heading: "Business",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Entrepreneurship",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Work",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Leadership",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Coaching",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Training",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Donating",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Volunteering",
                widht: widget.width,
                height: widget.height,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class chipp3 extends StatefulWidget {
  chipp3({
    Key key,
    @required this.heading,
    @required this.width,
    @required this.height,
  }) : super(key: key);
  final String heading;
  final double width;

  final double height;

  @override
  _chipp3State createState() => _chipp3State();
}

class _chipp3State extends State<chipp3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: widget.width * 0.025),
          child: Text(
            widget.heading,
            style: TextStyle(
                color: Colors.grey.shade600, fontSize: widget.width * 0.038),
          ),
        ),
        SizedBox(
          height: widget.height * 0.02,
        ),
        Padding(
          padding: EdgeInsets.only(
              left: widget.width * 0.06, right: widget.width * 0.06),
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              CHIP(
                heading: "Writing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Reading",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Sketching",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Crafting",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Crocheting",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Swimming",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Designing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Creating",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Editing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Building",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Repairing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Collecting",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Organizing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Decluttering",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Cleaning",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Playing an instrument",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Singing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Acting",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Movies",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "TV series",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Documentaries",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Music",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Podcasts",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Photography",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Event hosting",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Composing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Programming",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Collecting",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Gaming",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Playing",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Archery",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Gardening",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Animals",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Nature",
                widht: widget.width,
                height: widget.height,
              ),
              CHIP(
                heading: "Travel",
                widht: widget.width,
                height: widget.height,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CHIP extends StatefulWidget {
  CHIP({
    Key key,
    @required this.heading,
    @required this.widht,
    @required this.height,
  }) : super(key: key);
  final String heading;
  final double widht;
  final double height;

  @override
  _CHIPState createState() => _CHIPState();
}

class _CHIPState extends State<CHIP> {
  bool _isselcted = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_isselcted == false) {
            _isselcted = true;
          } else {
            _isselcted = false;
          }
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
        decoration: BoxDecoration(
            color: _isselcted ? Color(0xffD19D43) : Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(
                color: _isselcted ? Colors.transparent : Colors.grey.shade500)),
        child: Text(
          widget.heading,
          style: TextStyle(
              color: _isselcted ? Colors.white : Colors.grey.shade600,
              fontSize: widget.widht * 0.036),
        ),
      ),
    );
  }
}
