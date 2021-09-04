import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/screens/screens_exporter.dart';
import 'package:goldidate/utils/utils_exporter.dart';
import 'package:goldidate/utils/widgets/widgets_exporter.dart';

import '../../utils/common.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int currentPage = 0;
  PageController _pageController = PageController(initialPage: 0);

  final List<Widget> introSlides = [
    WelcomeSlide(
      centerImage: 'Group 514.png',
      headerText: 'Discover People',
    ),
    WelcomeSlide(
      centerImage: "intro2.png",
      headerText: 'Match with them',
    ),
    WelcomeSlide(
      centerImage: 'intro3.png',
      headerText: 'Chat with them',
    ),
  ];

  final List<Widget> slidesDescription = [
    DescriptiveSlideText(
        descriptiveText: "Find like minded people to connect with"),
    DescriptiveSlideText(
        descriptiveText:
            "See who you like and who likes you and connect with them"),
    DescriptiveSlideText(
        descriptiveText:
            "Chat with your favorite people who you connected with"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Common.assetsImages + "half_primary_round_half_white.png",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 65.0, vertical: 20.0),
            child: Stack(
              children: [
                Container(
                  child: SizedBox(
                    child:
                        NotificationListener<OverscrollIndicatorNotification>(
                      onNotification: (overscroll) {
                        overscroll.disallowGlow();
                      },
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: introSlides.length,
                        onPageChanged: (index) {
                          setState(() {
                            currentPage = index;
                          });
                        },
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.7,
                                child: introSlides[index],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.22,
                                child: Center(
                                  child: slidesDescription[index],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.22,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildPageIndicator(),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: currentPage != introSlides.length - 1
                      ? const SizedBox.shrink()
                      : PrimaryBackgroundButton(
                          onPressed: () =>
                              Navigator.of(context).pushNamedAndRemoveUntil(
                            AppRoutes.clubRulesRoute,
                            (route) => false,
                          ),
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < introSlides.length; i++) {
      list.add(
        i == currentPage
            ? BuildSlidingDot(isActive: true)
            : BuildSlidingDot(isActive: false),
      );
    }
    return list;
  }
}

class BuildSlidingDot extends StatelessWidget {
  final bool isActive;

  const BuildSlidingDot({
    Key key,
    @required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: 8.0,
      decoration: BoxDecoration(
        color: isActive ? AppColors.goldColor : AppColors.greyColor,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
