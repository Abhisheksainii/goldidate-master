import "package:flutter/material.dart";
import 'package:goldidate/routes/app_routes.dart';
import 'package:goldidate/utils/utils_exporter.dart';
import 'package:goldidate/screens/coins_feature/getcoins.dart';
import 'package:goldidate/screens/Home/classicview.dart';
import 'package:goldidate/screens/Home/galleryview.dart';
import 'package:goldidate/screens/Home/allchats.dart';
import 'package:goldidate/screens/Home/Profile/myProfile.dart';

class TabBarViewPage extends StatefulWidget {
  @override
  _TabBarViewState createState() => _TabBarViewState();
}

class _TabBarViewState extends State<TabBarViewPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int indexx = 0;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: height * 0.075),
              child: TabBar(
                  controller: _tabController,
                  onTap: (index) {
                    print(_tabController.index);
                    print(index);
                    setState(() {
                      indexx = index;
                    });
                  },
                  labelPadding: EdgeInsets.fromLTRB(0, height * 0.04, 0, 0),
                  indicatorWeight: 0.000001,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      child: ImageIcon(
                        AssetImage(Common.assetsImages + "Group 296.png"),
                        size: height * 0.11,
                        color: _tabController.index == 0
                            ? AppColors.goldColor
                            : Colors.grey,
                      ),
                    ),
                    Tab(
                      icon: ImageIcon(
                        AssetImage(Common.assetsImages + "Group.png"),
                        color: _tabController.index == 1
                            ? AppColors.goldColor
                            : Colors.grey,
                        size: height * 0.11,
                      ),
                    ),
                    Tab(
                      child:
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                      ImageIcon(
                AssetImage(Common.assetsImages + "message icon.png"),
                        color: _tabController.index == 2
                            ? AppColors.goldColor
                            : Colors.grey,
                        size: height * 0.11,
    ),
                    Padding(
                      padding:  EdgeInsets.only(left: width*0.11,bottom: height*0.01),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
    color: Colors.red,
                        ),
                       child: Text("3",style: TextStyle(color: Colors.white),),width: width*0.04,),
                    ),
                      ],),




                      ),

                    Tab(
                      icon: ImageIcon(
                        AssetImage(Common.assetsImages + "user icon.png"),
                        color: _tabController.index == 3
                            ? AppColors.goldColor
                            : Colors.grey,
                        size: height * 0.11,
                      ),
                    ),
                  ]),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _tabController,
                    children: [
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
    );
  }
}
