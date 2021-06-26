import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/utils_exporter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _runSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Image.asset(
          Common.assetsAnimations + "splash.gif",
          height: 240.0,
        ),
      ),
    );
  }

  void _runSplash() async {
    //check if the notFirstTime is true otherwise make it true
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    //  bool notFirstTime = sharedPreferences.getBool("notFirstTime") ?? false;
    bool notFirstTime = false;
    bool isUserLoggedIn;
    if (notFirstTime == false) {
      //store value to notFirstTime as true
      sharedPreferences.setBool("notFirstTime", true);
    }
    // check if logged in
    //todo: if logged in then check if user data exist in firestore or not
    isUserLoggedIn = await ApiRequests.isUserLoggedIn();

    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        notFirstTime
            ? isUserLoggedIn
                ? Navigator.of(context).pushNamedAndRemoveUntil(
                    AppRoutes.tempHomeRoute, (route) => false)
                : Navigator.of(context).pushNamedAndRemoveUntil(
                    AppRoutes.getStartedRoute, (route) => false)
            : Navigator.of(context).pushNamedAndRemoveUntil(
                AppRoutes.welcomeRoute, (route) => false);
      });
    });
  }
}
