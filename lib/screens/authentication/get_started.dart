import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/utils_exporter.dart';
import 'package:goldidate/utils/widgets/widgets_exporter.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          PrimaryBackgroundWithTopImage(),
          Positioned.fill(
            top: size.height * 0.36,
            right: 0,
            left: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: height * 0.025, horizontal: width * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          Common.assetsIcons + "goldidate_heart.png",
                        ),
                        Text(
                          Common.applicationName.toUpperCase(),
                          style: TextStyle(
                            color: AppColors.goldColor,
                            fontSize: height * 0.03,
                            letterSpacing: 2.4,
                          ),
                        ),
                        SizedBox(height: height * 0.03),
                        Text(
                          "By clicking “Sign In”, you agree with our Terms.\nLearn how we process your data in our Privacy Policy\nand Cookies Policy.",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: height * 0.017,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: height * 0.03),
                        Row(
                          children: [
                            Expanded(
                              child: PrimaryOutlineButton(
                                buttonText: "Create Account",
                                onPressed: () => Navigator.of(context)
                                    .pushNamed(
                                        AppRoutes.createAccountInAppRoute),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.017),
                        Row(
                          children: [
                            Expanded(
                              child: PrimaryOutlineButton(
                                buttonText: "Sign In",
                                onPressed: () => Navigator.of(context)
                                    .pushNamed(AppRoutes.signInSocialRoute),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Trouble Logging in?",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
