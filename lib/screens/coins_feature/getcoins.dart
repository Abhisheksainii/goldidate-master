import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class GetCoins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      Common.assetsImages + "primary_background.png"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                size.width * 0.08, height * 0.04, size.width * 0.08, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  height: height * 0.05,
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
                  Gcamount: "500",
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
                  Image.asset(Common.assetsImages + "bigcoin.png"),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Only 500,000 ",
                    style: TextStyle(fontSize: 30, color: AppColors.greyColor),
                  )
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Goldicoins left",
                    style: TextStyle(fontSize: 20, color: AppColors.greyColor),
                  )
                ]),
                SizedBox(
                  height: height * 0.04,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  RichText(
                    text: TextSpan(
                      text: 'By clicking "Buy now",you agree with our ',
                      style: TextStyle(
                          fontSize: 11, color: Colors.grey.withOpacity(0.7)),
                      children: [
                        TextSpan(
                          text: 'Terms.',
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 11,
                          ),
                        ),
                        TextSpan(
                          text: 'Learn',
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.7),
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  RichText(
                    text: TextSpan(
                      text: 'how we process your data in our',
                      style: TextStyle(
                          fontSize: 11, color: Colors.grey.withOpacity(0.7)),
                      children: [
                        TextSpan(
                          text: ' Privacy Policy',
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 11,
                          ),
                        ),
                        TextSpan(
                          text: ' and',
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.7),
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Cookies Policy",
                    style: TextStyle(
                      color: AppColors.greyColor,
                      fontSize: 11,
                    ),
                  ),
                ]),
              ],
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
                  style: TextStyle(fontSize: 24, color: AppColors.greyColor),
                  children: [
                    TextSpan(
                      text: 'G',
                      style: TextStyle(
                        color: AppColors.greyColor,
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text: 'c ',
                      style: TextStyle(
                        color: AppColors.greyColor,
                        fontSize: 10,
                      ),
                    ),
                    TextSpan(
                      text: r"for $" "$Cost",
                      style:
                          TextStyle(fontSize: 24, color: AppColors.greyColor),
                    ),
                  ],
                ),
              ),
              Text(
                conversion,
                style: TextStyle(fontSize: 8.5, color: AppColors.greyColor),
              ),
            ],
          ),
          Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Buy now",
              style: TextStyle(color: AppColors.goldColor),
            ),
          ]),
        ],
      ),
    );
  }
}
