import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:goldidate/screens/Home/Profile/Personal.dart';
import 'package:goldidate/screens/Home/Profile/Settings.dart';
import 'package:goldidate/screens/Home/Profile/addMedia.dart';
import 'package:goldidate/screens/Home/Profile/editProfile.dart';
import 'package:goldidate/screens/Home/Profile/goldidatePlus.dart';
import 'package:goldidate/screens/Home/Profile/goldidatePlus2.dart';
import 'package:goldidate/screens/Home/Profile/myProfile.dart';
import 'package:goldidate/screens/Home/addPhotos.dart';
import 'package:goldidate/screens/Home/allchats.dart';
import 'package:goldidate/screens/Home/chat_screen.dart';
import 'package:goldidate/screens/Home/classicview.dart';
import 'package:goldidate/screens/Home/editInnerProfile.dart';
import 'package:goldidate/screens/Home/filters.dart';
import 'package:goldidate/screens/Home/location.dart';
import 'package:goldidate/screens/Home/verifyCode.dart';
import 'package:goldidate/screens/authentication/create_account.dart';
import 'package:goldidate/screens/screens_exporter.dart';

import 'package:goldidate/utils/utils_exporter.dart';

import 'routes/app_routes.dart';
import 'utils/widgets/tabview.dart';

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
      initialRoute: AppRoutes.Tabview,
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
        AppRoutes.createAccountInAppRoute: (context) => CreateAccount(),
        AppRoutes.getcoins: (context) => GetCoins(),
        AppRoutes.Tabview: (context) => TabBarViewPage(),
        AppRoutes.allchats: (context) => AllChats(),
        AppRoutes.addMedia: (context) => AddMedia(),
        AppRoutes.addPhotos: (context) => AddPhotos(),
        AppRoutes.myprofile: (context) => MyProfile(),
        AppRoutes.settings: (context) => Settings(),
        AppRoutes.goldidatePlus: (context) => GoldidatePlus(),
        AppRoutes.goldidatePlus2: (context) => GoldidatePlus2(),
        AppRoutes.editProfile: (context) => EditProfile(),
        AppRoutes.location: (context) => Location(),
        AppRoutes.filters: (context) => Filters(),
        AppRoutes.innerProfile: (context) => InnerProfile(),
        AppRoutes.personal: (context) => Personal(),
        AppRoutes.chatscreen: (context) => ChatScreen(),
        AppRoutes.verifyCode: (context) => VerifyCode(),
        AppRoutes.terms_condititons: (context) => Terms_Conditions(),
        AppRoutes.classicView: (context) => Classicview(),
      },
    );
  }
}
