import 'package:flutter/material.dart';
import 'package:goldidate/utils/common.dart';

class PaymentMethods extends StatefulWidget {
  @override
  _PaymentMethodsState createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: height * 0.05, left: width * 0.02),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Container(
                child: Text(
                  "Payment Methods",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              PaymentCard(
                pathName: "Paypal.png",
                text1: "myself@me.com",
                text2: "Added on 15/02/2017",
              ),
              PaymentCard(
                pathName: "Visa.png",
                text1: "****  ****  **** 0817",
                text2: "Expiry Date 10/19",
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.05,
                    left: width * 0.05,
                    right: width * 0.05),
                child: Container(
                  height: height * 0.07,
                  width: width * 1.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFD19D43),
                    border: Border.all(
                      color: Color(0xFFE0E0E0),
                    ),
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  child: Center(
                    child: Text(
                      "Add Payment Method",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class PaymentCard extends StatelessWidget {
  PaymentCard({this.pathName, this.text1, this.text2});
  String pathName;
  String text1;
  String text2;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: height * 0.02),
      child: Card(
        elevation: 12.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: Container(
          height: height * 0.3,
          width: width * 0.9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: width * 0.08,
                    height: height * 0.04,
                    child: Center(
                      child: Image.asset(
                        Common.assetsImages + "whitedots.png",
                        width: width * 0.037,
                      ),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            AssetImage(Common.assetsImages + "Rectangle 6.png"),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.06, top: height * 0.01),
                child: Image.asset(
                  Common.assetsImages + pathName,
                  width: width * 0.24,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.06, top: height * 0.07),
                child: Text(
                  text1,
                  style: TextStyle(
                    color: Color(0xFFA7ADB4),
                    fontSize: width * 0.0345,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.06, top: height * 0.045),
                child: Text(
                  text2,
                  style: TextStyle(
                    color: Color(0xFFC8CFD6),
                    fontSize: width * 0.028,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
