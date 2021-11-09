import "package:flutter/material.dart";
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/screens/Home/galleryview_likeme.dart';
import 'package:goldidate/utils/utils_exporter.dart';
import 'package:goldidate/screens/coins_feature/getcoins.dart';
import 'package:goldidate/screens/Home/classicview.dart';
import 'package:goldidate/screens/Home/galleryview_mylike.dart';
import 'package:goldidate/screens/Home/allchats.dart';
import 'package:goldidate/screens/Home/Profile/myProfile.dart';

class GalleryTabBarViewPage extends StatefulWidget {
  @override
  _GalleryTabBarViewState createState() => _GalleryTabBarViewState();
}

class _GalleryTabBarViewState extends State<GalleryTabBarViewPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int indexx = 0;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Material(
              elevation: 7,
              shadowColor: Colors.black,
              child: Container(
                // constraints: BoxConstraints.expand(height: height * 0.075),
                child: TabBar(
                    controller: _tabController,
                    onTap: (index) {
                      print(_tabController.index);
                      print(index);
                      setState(() {
                        indexx = index;
                      });
                    },
                    // indicator: BoxDecoration(
                    //   border: Border(
                    //     left: BorderSide(
                    //         color: Colors.grey), // provides to left side
                    //     right: BorderSide(color: Colors.grey), // for right side
                    //   ),
                    // ),
                    // labelPadding: EdgeInsets.fromLTRB(0, height * 0, 0, 0),
                    indicatorWeight: 0.000001,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        child: TextButton(
                            child: Text(
                          "My Likes",
                          style: TextStyle(
                            color: _tabController.index == 0
                                ? AppColors.goldColor
                                : Colors.grey,
                          ),
                        )),
                      ),
                      Tab(
                        icon: TextButton(
                            child: Text(
                          "Likes Me",
                          style: TextStyle(
                            color: _tabController.index == 1
                                ? AppColors.goldColor
                                : Colors.grey,
                          ),
                        )),
                      ),
                    ]),
              ),
            ),
            // SizedBox(height: 5),
            Expanded(
              child: Container(
                child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _tabController,
                    children: [
                      GalleryViewMyLike(),
                      GalleryViewLikeMe(),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
