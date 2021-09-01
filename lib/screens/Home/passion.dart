import 'package:flutter/material.dart';
import 'package:goldidate/utils/app_colors.dart';

class Passions extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Passions"),
        actions: [
          Text("Done",style: TextStyle(color: AppColors.goldColor),),


        ],
      ),
      body: SingleChildScrollView(
        child: Container(

        ),
      ),
    );
  }
}
