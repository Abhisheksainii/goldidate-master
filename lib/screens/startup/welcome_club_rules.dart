import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/utils_exporter.dart';
import 'package:goldidate/utils/widgets/label_guide_card.dart';
import 'package:goldidate/utils/widgets/primary_background_button.dart';

class WelcomeClubRules extends StatefulWidget {
  const WelcomeClubRules({Key key}) : super(key: key);

  @override
  _WelcomeClubRulesState createState() => _WelcomeClubRulesState();
}

class _WelcomeClubRulesState extends State<WelcomeClubRules> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10.0),
              Padding(
                padding:  EdgeInsets.only(left: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                        AppRoutes.getStartedRoute, (route) => false),
                    child: Icon(
                      Icons.clear,
                      color: AppColors.lightPrimaryColor,
                      size: 38.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Image.asset(
                Common.assetsImages + "club_rules_header.png",
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 15.0),
              Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: width*0.05,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Welcome to ${Common.applicationName}",
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 24.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 6.0),
                    Text(
                      "Please follow these club rules when using this app.",
                      style: TextStyle(
                        color: AppColors.blackColor.withOpacity(0.8),
                        fontSize: 18.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      children: [
                        Expanded(child: LabelGuideCard(head: "Be yourself.",description: "Upload only your own photos, age and bio that's yours",)),
                        const SizedBox(width: 15.0),
                        Expanded(child: LabelGuideCard(head: "Be generous.",description: "Treat others with dignity and respect, Send Gifts To shoe you really care",)),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      children: [
                        Expanded(child: LabelGuideCard(head: "Be safe.",description: "Don't give out personal info too quickly. Guage, analyse and date safely",)),
                        const SizedBox(width: 15.0),
                        Expanded(child: LabelGuideCard(head: "Be active",description: "Report others rude or bad behaviour actively so we can keep it safe",)),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    PrimaryBackgroundButton(
                      onPressed: () => Navigator.of(context)
                          .pushNamedAndRemoveUntil(
                              AppRoutes.getStartedRoute, (route) => false),
                      buttonText: "I Understand",
                    ),
                    const SizedBox(height: 40.0),
                    InkWell(
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRoutes.terms_condititons),
                      child: Text(
                        "Terms of Use and Privacy Policy",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
