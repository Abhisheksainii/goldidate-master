import "package:flutter/material.dart";
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/utils_exporter.dart';
import 'package:goldidate/screens/coins_feature/getcoins.dart';
import 'package:goldidate/screens/Home/classicview.dart';
import 'package:goldidate/screens/Home/galleryview.dart';
import 'package:goldidate/screens/Home/allchats.dart';
import 'package:goldidate/screens/Home/myProfile.dart';

class TabBarViewPage extends StatefulWidget {
  @override
  _TabBarViewState createState() => _TabBarViewState();
}

class _TabBarViewState extends State<TabBarViewPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(height: height * 0.075),
                child: TabBar(
                    labelPadding: EdgeInsets.fromLTRB(0, height * 0.04, 0, 0),
                    indicatorWeight: 0.000001,
                    labelColor: Colors.black,
                    automaticIndicatorColorAdjustment: false,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        key: ValueKey(1),
                        child: ImageIcon(
                          AssetImage(Common.assetsImages + "Group 296.png"),
                          color: AppColors.goldColor,
                        ),
                      ),
                      Tab(
                        icon: ImageIcon(
                          AssetImage(Common.assetsImages + "Group.png"),
                          color: Colors.red,
                        ),
                      ),
                      Tab(
                        icon: ImageIcon(
                          AssetImage(Common.assetsImages + "message icon.png"),
                          color: Colors.blue,
                        ),
                      ),
                      Tab(
                        icon: ImageIcon(
                          AssetImage(Common.assetsImages + "user icon.png"),
                          color: Colors.green,
                        ),
                      ),
                    ]),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(children: [
                    Classicview(),
                    GalleryView(),
                    AllChats(),
                    MyProfile(),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
