import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:goldidate/screens/Home/Profile/Personal.dart';
import 'package:goldidate/screens/Home/Profile/Settings.dart';
import 'package:goldidate/screens/Home/Profile/editInfo.dart';
import 'package:goldidate/screens/Home/Profile/editProfile.dart';
import 'package:goldidate/screens/Home/Profile/goldidatePlus.dart';
import 'package:goldidate/screens/Home/Profile/goldidatePlus2.dart';
import 'package:goldidate/screens/Home/Profile/myProfile.dart';
import 'package:goldidate/screens/Home/Update/Bio.dart';
import 'package:goldidate/screens/Home/Update/Coins.dart';
import 'package:goldidate/screens/Home/Update/Education.dart';
import 'package:goldidate/screens/Home/Update/Email.dart';
import 'package:goldidate/screens/Home/Update/Gender.dart';
import 'package:goldidate/screens/Home/Update/LevelofEducation.dart';
import 'package:goldidate/screens/Home/Update/PayPal.dart';
import 'package:goldidate/screens/Home/Update/Religious.dart';
import 'package:goldidate/screens/Home/Update/ShowMe.dart';
import 'package:goldidate/screens/Home/Update/Visa.dart';
import 'package:goldidate/screens/Home/Update/mydirection.dart';
import 'package:goldidate/screens/Home/Update/payment.dart';
// import 'package:goldidate/screens/Home/Update/MyGender.dart';
import 'package:goldidate/screens/Home/Update/phoneNumber.dart';
import 'package:goldidate/screens/Home/Update/searching.dart';
import 'package:goldidate/screens/Home/Update/sexuality.dart';
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
        AppRoutes.passion: (context) => Passions(),
        AppRoutes.bio: (context) => Bio(),
        AppRoutes.levelofEducation: (context) => LevelofEducation(),
        AppRoutes.phoneNumber: (context) => PhoneNumber(),
        AppRoutes.email: (context) => Email(),
        AppRoutes.coins: (context) => Coins(),
        AppRoutes.education: (context) => Education(),
        AppRoutes.gender: (context) => MyGender(),
        AppRoutes.showme: (context) => ShowMe(),
        AppRoutes.searching: (context) => Searching(),
        AppRoutes.sexuality: (context) => Sexuality2(),
        AppRoutes.religious: (context) => Religious(),
        AppRoutes.mydirection: (context) => MyDirection(),
        AppRoutes.paymentMethods: (context) => PaymentMethods(),
        AppRoutes.paypal: (context) => Paypal(),
        AppRoutes.visa: (context) => Visa(),
        AppRoutes.splashscreengoldi: (context) => GoldiSplash(),
      },
    );
  }
}
