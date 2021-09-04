import 'package:flutter/material.dart';
import 'package:goldidate/utils/common.dart';
import 'package:goldidate/routes/app_routes.dart';
class GoldiSplash extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, AppRoutes.welcomeRoute);
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        Common.assetsImages + "primary_background.png"),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  SizedBox(height: height*0.12,),
                    Image.asset(Common.assetsImages+"Chat0.png"),
                  Image.asset(Common.assetsImages+"colorlogo.png"),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
