import 'package:flutter/material.dart';
import 'package:goldidate/screens/Home/chat_screen.dart';
import 'package:goldidate/utils/app_colors.dart';
import 'package:goldidate/utils/common.dart';
import 'package:goldidate/routes/app_routes.dart';

class MatchScreen extends StatelessWidget {
  final String imageUrl;
  final String giftname;
  final String giftpricecoin;
  MatchScreen(
      {Key key,
      @required this.imageUrl,
      @required this.giftname,
      @required this.giftpricecoin})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Common.assetsImages + "Matchbg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Congratulations",
                  style: TextStyle(
                      fontSize: height * 0.04,
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  "You send a gift to Eliza. Do not",
                  style: TextStyle(
                      fontSize: height * 0.018,
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: height * 0.004,
                ),
                Text(
                  "waste time and write to her",
                  style: TextStyle(
                      fontSize: height * 0.018,
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  height: height * 0.1,
                  width: width * 0.28,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Common.assetsImages + "matchimage.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  height: height * 0.27,
                  width: width * 0.46,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  giftname,
                  style: TextStyle(
                      fontSize: height * 0.04,
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Common.assetsImages + "smallcoin.png",
                      height: height * 0.055,
                      width: width * 0.055,
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    RichText(
                      text: TextSpan(
                        text: giftpricecoin,
                        style: TextStyle(
                            fontSize: height * 0.025,
                            color: AppColors.greyColor),
                        children: [
                          TextSpan(
                            text: ' G',
                            style: TextStyle(
                              color: AppColors.greyColor,
                              fontSize: height * 0.02,
                            ),
                          ),
                          TextSpan(
                            text: 'c ',
                            style: TextStyle(
                              color: AppColors.greyColor,
                              fontSize: height * 0.015,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: width * 0.75,
                  height: height * 0.08,
                  decoration: BoxDecoration(
                    color: Color(0xffd19d43),
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(
                              imageUrl: imageUrl,
                              giftname: giftname,
                              giftpricecoin: giftpricecoin,
                            ),
                          ));
                    },
                    child: Text(
                      "Write to Marlene",
                      style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: height * 0.025),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                InkWell(
                  onTap: () =>
                      Navigator.of(context).pushNamed(AppRoutes.Tabview),
                  child: Text(
                    "Back to Search",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
