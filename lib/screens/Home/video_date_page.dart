import 'package:flutter/material.dart';
import 'package:goldidate/utils/common.dart';

class VideoDatePage extends StatelessWidget {
  const VideoDatePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    print(height);
    final width = MediaQuery.of(context).size.width;
    print(width);
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                Common.assetsImages + "primary_background.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(
                  height: height * 0.05,
                ),
                Column(
                  children: [
                    Image(
                        height: height * 0.1,
                        width: width * 0.5,
                        image: AssetImage(
                            Common.assetsImages + "videocamera@2x.png")),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Text(
                      "Use Vedio Date",
                      style: TextStyle(
                          fontSize: width * 0.11,
                          color: Color(0xffC9C8C8),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Golidate - Everybody love to get gifts",
                      style: TextStyle(
                        fontSize: width * 0.039,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 8.0, left: 8.0, right: 8.0, bottom: 2.0),
                      child: Container(
                        height: height * 0.09,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.0),
                          gradient: LinearGradient(colors: [
                            Color(0xFFD9B372),
                            Color(0xFFD19D43),
                          ]),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: height * 0.005),
                              child: Image.asset(
                                Common.assetsImages + "bigcoin.png",
                                height: 40,
                                width: 40,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.002,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.2),
                              child: Text(
                                "Get more Goldicoins",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.04,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 8.0, left: 8.0, right: 8.0, bottom: 2),
                      child: Container(
                        height: height * 0.09,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.0),
                          gradient: LinearGradient(colors: [
                            Color(0xFFD9B372),
                            Color(0xFFD19D43),
                          ]),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: width * 0),
                              child: Text(
                                "Get the Best Deal",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.05,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: width * 0),
                              child: Text(
                                "Coins Include in every Deal",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.030,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
