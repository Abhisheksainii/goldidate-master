import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/utils_exporter.dart';
import 'package:goldidate/utils/widgets/widgets_exporter.dart';

class LoginSocial extends StatefulWidget {
  const LoginSocial({Key key}) : super(key: key);

  @override
  _LoginSocialState createState() => _LoginSocialState();
}

class _LoginSocialState extends State<LoginSocial> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          PrimaryBackgroundWithTopImage(),
          Positioned(
            top: 40,
            left: 20,
            child: PopButton(
              iconColor: AppColors.goldColor,
            ),
          ),
          Positioned.fill(
            top: size.height * 0.36,
            right: 5,
            left: 5,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        Common.assetsIcons + "goldidate_heart.png",
                      ),
                      Text(
                        Common.applicationName.toUpperCase(),
                        style: TextStyle(
                          color: AppColors.goldColor,
                          fontSize: 20.0,
                          letterSpacing: 2.4,
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      Text(
                        "By clicking “Sign In”, you agree with our Terms.\nLearn how we process your data in our Privacy Policy and Cookies Policy.",
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        children: [
                          Expanded(
                            child: PrimaryOutlineButton(
                              onPressed: () => processFacebookLogin(),
                              leading: Image.asset(
                                  Common.assetsIcons + "facebook_f.png"),
                              buttonText: "Sign In With Facebook",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        children: [
                          Expanded(
                            child: PrimaryOutlineButton(
                              onPressed: () => processGoogleLogin(),
                              leading: Image.asset(
                                  Common.assetsIcons + "google_g.png"),
                              buttonText: "Sign In With Google",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        children: [
                          Expanded(
                            child: PrimaryOutlineButton(
                              leading: Image.asset(
                                  Common.assetsIcons + "apple_a.png"),
                              buttonText: "Sign In With Apple",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        children: [
                          Expanded(
                            child: PrimaryOutlineButton(
                              onPressed: () => Navigator.of(context)
                                  .pushNamed(AppRoutes.signUpInAppRoute),
                              leading:
                                  Image.asset(Common.assetsIcons + "phone.png"),
                              buttonText: "Sign In With Phone Number",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    "Trouble Logging in?",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          isLoading
              ? Positioned.fill(
                  child: Container(
                    color: AppColors.blackColor.withOpacity(0.25),
                    height: size.height,
                  ),
                )
              : const SizedBox.shrink(),
          isLoading
              ? Positioned.fill(
                  child: Center(
                    child: CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation<Color>(
                          AppColors.primaryColor),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }

  void processGoogleLogin() async {
    setState(() {
      isLoading = true;
    });
    ApiRequests.googleLogin(context).then((value) {
      setState(() {
        isLoading = false;
      });

      Navigator.pushNamedAndRemoveUntil(
          context, AppRoutes.tempHomeRoute, (route) => false);
    }).onError((error, stackTrace) {
      setState(() {
        isLoading = false;
      });

      Common.showOnePrimaryButtonDialog(
        context: context,
        dialogMessage: error.toString(),
        primaryButtonText: "Okay",
      );
    });
  }

  void processFacebookLogin() {
    setState(() {
      isLoading = true;
    });
    ApiRequests.facebookLogin(context).then((value) {
      setState(() {
        isLoading = false;
      });
      if (value) {
        Navigator.pushNamedAndRemoveUntil(
            context, AppRoutes.tempHomeRoute, (route) => false);
      }
    }).onError((error, stackTrace) {
      setState(() {
        isLoading = false;
      });

      Common.showOnePrimaryButtonDialog(
        context: context,
        dialogMessage: error.toString(),
        primaryButtonText: "Okay",
      );
    });
  }
}
