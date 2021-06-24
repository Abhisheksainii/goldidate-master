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
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
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
                        Expanded(child: LabelGuideCard()),
                        const SizedBox(width: 15.0),
                        Expanded(child: LabelGuideCard()),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      children: [
                        Expanded(child: LabelGuideCard()),
                        const SizedBox(width: 15.0),
                        Expanded(child: LabelGuideCard()),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    PrimaryBackgroundButton(
                      onPressed: () => Navigator.of(context)
                          .pushNamedAndRemoveUntil(
                              AppRoutes.getStartedRoute, (route) => false),
                      buttonText: "I Understand",
                    ),
                    const SizedBox(height: 25.0),
                    InkWell(
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRoutes.terms_condititons),
                      child: Text(
                        "Terms of Use and Privacy Policy",
                        textAlign: TextAlign.center,
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
