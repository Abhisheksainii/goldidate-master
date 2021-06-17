import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class WelcomeSlide extends StatelessWidget {
  final String headerText, centerImage;

  const WelcomeSlide({
    Key key,
    @required this.headerText,
    @required this.centerImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Text(
          headerText,
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Image.asset(
          Common.assetsImages + centerImage,
          height: MediaQuery.of(context).size.height * 0.55,
        ),
      ],
    );
  }
}
