import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:goldidate/screens/screens_exporter.dart';
import 'package:goldidate/utils/utils_exporter.dart';

import 'routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //todo: Add release SHA 1 and SHA 256 on publish to stores for firebase
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Common.applicationName,
      initialRoute: AppRoutes.splashRoute,
      theme: ThemeData(
        fontFamily: "SFPro",
      ),
      routes: {
        AppRoutes.splashRoute: (context) => Splash(),
        AppRoutes.welcomeRoute: (context) => Welcome(),
        AppRoutes.getStartedRoute: (context) => GetStarted(),
        AppRoutes.clubRulesRoute: (context) => WelcomeClubRules(),
        AppRoutes.signInSocialRoute: (context) => LoginSocial(),
        AppRoutes.signUpInAppRoute: (context) => SignUpInApp(),
        AppRoutes.tempHomeRoute: (context) => TempHome(),
      },
    );
  }
}
