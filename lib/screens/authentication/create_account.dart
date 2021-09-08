import 'package:flutter/material.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/utils_exporter.dart';
import 'package:goldidate/utils/widgets/widgets_exporter.dart';
import 'package:url_launcher/url_launcher.dart';
class CreateAccount extends StatefulWidget {
  const CreateAccount({Key key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.017,
                  horizontal: size.width * 0.023),
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
                          fontSize: size.height * 0.03,
                          letterSpacing: 2.4,
                        ),
                      ),
                       SizedBox(height: 20.0),
                      Text.rich(
                        TextSpan(
                            children: [
                              TextSpan(
                                text: 'By clicking “Sign In”, you agree with our ',
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: width * 0.036,

                                ),
                              ),
                              WidgetSpan(
                                  child: InkWell(
                                    child: Text( 'Terms.  ',
                                      style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontSize: width * 0.036,
                                          fontWeight: FontWeight.bold

                                      ),),
                                    onTap: () {
                                      launch("http://goldidate.com/terms-and-conditions/");
                                    },
                                  )
                              ),


                              TextSpan(text: 'Learn how we process your data in our ',style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: width * 0.036,

                              ),),
                              WidgetSpan(
                                  child: InkWell(
                                    child: Text( 'Privacy and Policy',
                                      style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontSize: width * 0.036,
                                          fontWeight: FontWeight.bold

                                      ),),
                                    onTap: () {
                                      launch("http://goldidate.com/privacy-policy/");
                                    },
                                  )
                              ),
                              TextSpan(text: ' and', style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: width * 0.036,

                              ),),
                              WidgetSpan(
                                  child: InkWell(
                                    child: Text( ' Cookies Policy.',
                                      style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontSize: width * 0.036,
                                          fontWeight: FontWeight.bold

                                      ),),
                                    onTap: () {
                                      launch("http://goldidate.com/cookie-policy/");
                                    },
                                  )
                              ),
                            ]
                        ),
                        textAlign: TextAlign.center,


                      ),

                      SizedBox(height: 20.0),
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    border: Border.all(
                                      color: AppColors.goldColor,
                                    ),
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16.0),
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      hintText: "Username",
                                      hintStyle: TextStyle(
                                        color: AppColors.goldColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                border: Border.all(
                                  color: AppColors.goldColor,
                                ),
                              ),
                              child: TextFormField(
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                                obscureText: true,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(
                                    color: AppColors.goldColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                  ),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color: AppColors.goldColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25.0),
                      Container(
                        width: 160.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD9B372),
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(
                            color: AppColors.goldColor,
                          ),
                        ),
                        child: TextButton(
                          child: Text(
                            "SIGN IN",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  InkWell(
                    onTap: (){
                      launch('http://goldidate.com/help-support/');
                    },
                    child: Text(
                      "Trouble Logging in?",
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
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
}
