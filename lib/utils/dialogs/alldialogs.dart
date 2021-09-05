import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goldidate/screens/Home/passion.dart';
import 'package:goldidate/utils/app_colors.dart';
import 'package:goldidate/utils/common.dart';

void share_dialog(BuildContext context, double height, double width) {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: Center(
          child: Text(
        "Share",
        style: TextStyle(fontWeight: FontWeight.w600),
      )),
      content: Container(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Tap an icon below to share your",
                  style: TextStyle(color: Colors.grey.shade600),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.026),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "content directly",
                    style: TextStyle(color: Colors.grey.shade600),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Common.assetsIcons + "instagram logo.png",
                    height: height * 0.08,
                    width: width * 0.08,
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Image.asset(
                    Common.assetsIcons + "facebook logo.png",
                    height: height * 0.04,
                    width: width * 0.05,
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Image.asset(
                    Common.assetsIcons + "whatsapp logo.png",
                    height: height * 0.08,
                    width: width * 0.08,
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Image.asset(
                    Common.assetsIcons + "snapchat logo.png",
                    height: height * 0.08,
                    width: width * 0.08,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

void report_submit(BuildContext context, double height, double width) {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: Center(
          child: Text(
        "Report submitted",
        style: TextStyle(fontWeight: FontWeight.w600),
      )),
      content: Container(
        height: height * 0.12,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Team of users quality assurance",
                  style: TextStyle(color: Colors.grey.shade600),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.026),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "will check your report. Thank you for",
                    style: TextStyle(color: Colors.grey.shade600),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.055),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "making our network better.",
                    style: TextStyle(color: Colors.grey.shade600),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

void custom_report(BuildContext context, double height, double width) {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: Center(
          child: Text(
        "Report submission",
        style: TextStyle(fontWeight: FontWeight.w600),
      )),
      content: Container(

        height: height * 0.26,
        width: width * 1,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(

                  height: height * 0.2,
                  width: width * 0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextFormField(
                    maxLines: 7,
                    decoration: InputDecoration(
                        hintText: "Please tell us what's on your mind... ",
                        hintStyle: TextStyle(fontSize: width * 0.034),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.goldColor),
                            borderRadius: BorderRadius.circular(10.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.goldColor),
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      report_submit(context, height, width);
                    },
                    child: Container(
                      child: Text(
                        "Send",
                        style: TextStyle(fontSize: width * 0.028),
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1.5,
                            blurRadius: 3,
                            offset:
                                Offset(0, 2.2), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      alignment: Alignment.center,
                      width: 90,
                      height: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

void submit_promotion_code(BuildContext context, double height, double width) {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: Center(
          child: Text(
        "Submit Promotion code",
        style:
            TextStyle(color: AppColors.goldColor, fontWeight: FontWeight.w600),
      )),
      content: Container(
        height: height * 0.14,
        width: width * 1,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: height * 0.06,
                  width: width * 0.6,
                  child: TextFormField(
                    maxLines: 7,
                    decoration: InputDecoration(
                        hintText: "Please enter Promotion code...",
                        hintStyle: TextStyle(fontSize: width * 0.034),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.goldColor),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.goldColor),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            fontSize: width * 0.028,
                            color: AppColors.goldColor),
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.goldColor.withOpacity(0.6),
                            spreadRadius: 1.5,
                            blurRadius: 3,
                            offset:
                                Offset(0, 2.2), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      alignment: Alignment.center,
                      width: 90,
                      height: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

void delete_account(BuildContext context, double height, double width) {
  showDialog<void>(


    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return CupertinoAlertDialog(

        title: Text('Delete Account?',style: TextStyle(fontSize: width*0.045),),
        content: Text('Are you sure you want to delete account?',style: TextStyle(color: Colors.grey.shade600,fontSize: width*0.035),),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text('Cancel',style: TextStyle(color: Colors.grey.shade600),),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          CupertinoDialogAction(
            child: Text('Delete',style: TextStyle(color: AppColors.goldColor),),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

void logout_account(BuildContext context, double height, double width) {
  showDialog<void>(


    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return CupertinoAlertDialog(

        title: Text('Logout?',style: TextStyle(fontSize: width*0.045),),
        content: Text('Are you sure you want to log out?',style: TextStyle(color: Colors.grey.shade600,fontSize: width*0.035),),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text('Cancel',style: TextStyle(color: Colors.grey.shade600),),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          CupertinoDialogAction(
            child: Text('Logout',style: TextStyle(color: AppColors.goldColor),),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
