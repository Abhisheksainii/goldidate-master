import 'package:flutter/material.dart';
import 'package:goldidate/utils/utils_exporter.dart';

class PrimaryBackgroundButton extends StatelessWidget {
  final String buttonText, backgroundImage;
  final Color backgroundColor;
  final Function onPressed;
  final EdgeInsetsGeometry padding;
  final TextStyle buttonTextStyle;

  const PrimaryBackgroundButton({
    Key key,
    this.buttonText = "Continue",
    this.backgroundImage = "primary_button_background.png",
    this.padding = const EdgeInsets.symmetric(
      horizontal: 30.0,
      vertical: 20.0,
    ),
    this.buttonTextStyle = const TextStyle(
      color: AppColors.whiteColor,
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
    ),
    this.onPressed,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          decoration: BoxDecoration(
            color: AppColors.goldColor,
            borderRadius: BorderRadius.circular(50.0),

          ),
          padding: padding,
          child: Text(
            buttonText,
            style: buttonTextStyle,
            textAlign: TextAlign.center,
          )),
    );
  }
}
