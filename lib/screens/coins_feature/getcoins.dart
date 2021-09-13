import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';
import 'package:goldidate/routes/app_routes.dart';
import 'package:url_launcher/url_launcher.dart';
class GetCoins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        Common.assetsImages + "primary_background.png"),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  size.width * 0.08, height * 0.06, size.width * 0.08, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Get more coins",
                    style: TextStyle(
                        fontSize: height * 0.05, color: AppColors.greyColor),
                  ),
                  SizedBox(
                    height: height * 0.00002,
                  ),
                  Text(
                    "Goldicoin - Everybody love to get gifts",
                    style: TextStyle(
                        fontSize: height * 0.02, color: AppColors.greyColor),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  PriceTags(
                    size: size,
                    Gcamount: "500",
                    Cost: " 4.99",
                    conversion: "Gcc = Goldcoin currency = 0.0099",
                  ),
                  Divider(
                    color: AppColors.goldColor,
                    thickness: 1,
                  ),
                  PriceTags(
                    size: size,
                    Gcamount: "2500",
                    Cost: " 19.99",
                    conversion: "Gcc = Goldcoin currency = 0.0079",
                  ),
                  Divider(
                    color: AppColors.goldColor,
                    thickness: 1,
                  ),
                  PriceTags(
                    size: size,
                    Gcamount: "5000",
                    Cost: " 34.99",
                    conversion: "Gcc = Goldcoin currency = 0.0069",
                  ),
                  Divider(
                    color: AppColors.goldColor,
                    thickness: 1,
                  ),
                  PriceTags(
                    size: size,
                    Gcamount: "10000",
                    Cost: " 59.99",
                    conversion: "Gcc = Goldcoin currency = 0.0059",
                  ),
                  Divider(
                    color: AppColors.goldColor,
                    thickness: 1,
                  ),
                  PriceTags(
                    size: size,
                    Gcamount: "50000",
                    Cost: " 249.99",
                    conversion: "Gcc = Goldcoin currency = 0.0049",
                  ),
                  Divider(
                    color: AppColors.goldColor,
                    thickness: 1,
                  ),
                  PriceTags(
                    size: size,
                    Gcamount: "100000",
                    Cost: " 399.99",
                    conversion: "Gcc = Goldcoin currency = 0.0039",
                  ),
                  Divider(
                    color: AppColors.goldColor,
                    thickness: 1,
                  ),
                  PriceTags(
                    size: size,
                    Gcamount: "500000",
                    Cost: " 1499.99",
                    conversion: "Gcc = Goldcoin currency = 0.0029",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Image.asset(
                      Common.assetsImages + "bigcoin.png",
                      height: height * 0.12,
                      width: height * 0.2,
                    ),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "Only 49,999,995,000 ",
                      style: TextStyle(
                          fontSize: height * 0.037, color: AppColors.greyColor),
                    )
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "Goldicoins left",
                      style: TextStyle(
                          fontSize: height * 0.025, color: AppColors.greyColor),
                    )
                  ]),
                  SizedBox(
                    height: height * 0.04,
                  ),

                  Text.rich(
                    TextSpan(
                        children: [
                          TextSpan(
                            text: 'By clicking “Buy now”, you agree with our ',
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.7),
                              fontSize: width * 0.03,

                            ),
                          ),
                          WidgetSpan(
                              child: InkWell(
                                child: Text( 'Terms.  ',
                                  style: TextStyle(
                                      color: AppColors.greyColor,
                                      fontSize: width * 0.03,
                                      fontWeight: FontWeight.bold

                                  ),),
                                onTap: () {
                                  launch("http://goldidate.com/terms-and-conditions/");
                                },
                              )
                          ),


                          TextSpan(text: 'Learn how we process your data in our ',style: TextStyle(
                            color: Colors.grey.withOpacity(0.7),
                            fontSize: width * 0.03,

                          ),),
                          WidgetSpan(
                              child: InkWell(
                                child: Text( 'Privacy and Policy',
                                  style: TextStyle(
                                      color: AppColors.greyColor,
                                      fontSize: width * 0.03,
                                      fontWeight: FontWeight.bold

                                  ),),
                                onTap: () {
                                  launch("http://goldidate.com/privacy-policy/");
                                },
                              )
                          ),
                          TextSpan(text: ' and', style: TextStyle(
                            color: Colors.grey.withOpacity(0.7),
                            fontSize: width * 0.03,

                          ),),
                          WidgetSpan(
                              child: InkWell(
                                child: Text( ' Cookies Policy.',
                                  style: TextStyle(
                                      color: AppColors.greyColor,
                                      fontSize: width * 0.03,
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

                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.Tabview);
                        },
                        child: Text(
                          "Back",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.02,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.03,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PriceTags extends StatelessWidget {
  const PriceTags({
    Key key,
    this.onpressed,
    this.conversion,
    this.Gcamount,
    this.Cost,
    @required this.size,
  }) : super(key: key);

  final Size size;
  final String Gcamount;
  final Function onpressed;
  final String Cost;
  final String conversion;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
            child: Image.asset(Common.assetsImages + "smallcoin.png"),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: Gcamount,
                  style: TextStyle(
                      fontSize: height * 0.028, color: AppColors.greyColor),
                  children: [
                    TextSpan(
                      text: 'G',
                      style: TextStyle(
                        color: AppColors.greyColor,
                        fontSize: height * 0.018,
                      ),
                    ),
                    TextSpan(
                      text: 'c ',
                      style: TextStyle(
                        color: AppColors.greyColor,
                        fontSize: height * 0.012,
                      ),
                    ),
                    TextSpan(
                      text: r"for $" "$Cost",
                      style: TextStyle(
                          fontSize: height * 0.028, color: AppColors.greyColor),
                    ),
                  ],
                ),
              ),
              Text(
                conversion,
                style: TextStyle(
                    fontSize: height * 0.011, color: AppColors.greyColor),
              ),
            ],
          ),
          Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Buy now",
              style: TextStyle(
                  color: AppColors.goldColor, fontSize: height * 0.018),
            ),
          ]),
        ],
      ),
    );
  }
}
